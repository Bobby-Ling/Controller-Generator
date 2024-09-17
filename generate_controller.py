#!/bin/python3
# Authored by Bobby Ling
import re
import openpyxl
import sys

# config

signal_excel_path = "RISC-V单周期硬布线控制器表达式自动生成(2024-9-12)-RV32IM-FullOpcode.xlsx" if len(sys.argv)<=1 else sys.argv[1]
module_template_path = "templates/ControllerTemplate.v"
module_inst_template_path = "templates/ControllerInstTemplate.v"
generated_module_name = "Controller"
gen_module_path = f"generated/{generated_module_name}.v"
gen_inst_module_path = f"include/generated/{generated_module_name}_Inst.vh"

def signal_excel_parser(signal_excel_path:str):
    signal_workbook = openpyxl.load_workbook(signal_excel_path, data_only=True)
    sheet = signal_workbook["控制信号表达式生成"]
    name_row = 1
    formula_row = 66
    begin_col = 17
    end_col = 41
    skip_cols = [27, 28, 33, 34, 35, 36]
    
    signals = [sheet[name_row][i].value for i in range(begin_col, end_col) if i not in skip_cols ]
    signals = [re.sub(r"S([0-3])", r"AluOp_o[\1]", signal) for signal in signals]
    
    formulas = [sheet[formula_row][i].value for i in range(begin_col, end_col) if i not in skip_cols ]
    formulas = [re.sub(r"F(\d+)", r"F[\1] ", formula) for formula in formulas]
    formulas = [re.sub(r"OP(\d+)", r"OP[\1] ", formula) for formula in formulas]
    formulas = [re.sub(r"([&|+])~", r"\1 ~", formula) for formula in formulas]
    
    return signals, formulas

def generate(dry_run = True):
    with open(module_template_path) as template_file, open(module_inst_template_path) as inst_template_file:
        TAB1 = "    "
        TAB2 = TAB1 + TAB1
        TAB3 = TAB1 + TAB1 + TAB1
        module_template = re.sub(r'/\*placeholder(\{\d+\})\*/', r'\1', template_file.read()) # \1: 第一个匹配组
        inst_template = re.sub(r'/\*placeholder(\{\d+\})\*/', r'\1', inst_template_file.read())
        
        signals, formulas = signal_excel_parser(signal_excel_path)
        
        with open(gen_module_path, '+w') as gen_module_file, open(gen_inst_module_path, 'w') as gen_inst_module_file:
            # module   /*placeholder{0}*/
            io_define_tmpl:str = "{0}output {1}_o,\n"
            io_define_gen:str = ""
            
            # module   /*placeholder{1}*/
            assign_tmpl:str = "{0}assgin {1} = {2};\n"
            assign_gen:str = ""
            
            # inst          /*placeholder{0}*/
            inst_args_tmpl:str = "{0}.{1}_o(ID_{1}),\n"
            inst_args_gen:str = ""

            for signal, formula in zip(signals, formulas):
                io_define_gen += io_define_tmpl.format(TAB1, signal) if (re.match(r"AluOp_o\[[0-3]\]", signal) == None) else ""
                assign_gen += assign_tmpl.format(TAB1, signal + ("_o" if (re.match(r"AluOp_o\[[0-3]\]", signal) == None) else ""), formula)
                inst_args_gen += inst_args_tmpl.format(TAB2, signal) if (re.match(r"AluOp_o\[[0-3]\]", signal) == None) else ""
                
            generated_module = module_template.format(io_define_gen[:-2], assign_gen + "\n")
            generated_inst = inst_template.format(inst_args_gen[:-2]) # remove last ','
                
            if dry_run:
                print(generated_module)
                print(generated_inst)
            else:
                gen_module_file.write(generated_module)
                print(f"writing module to {gen_inst_module_path}")
                gen_inst_module_file.write(generated_inst)
                print(f"writing module to {gen_module_path}") 
               
generate(dry_run=False)
# generate()