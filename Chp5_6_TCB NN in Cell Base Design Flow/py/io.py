##  A python script to generate CHIP.v for IN/OUT physical cells for U18
##  Verilog port must follow the rules below:
##  bit number of port can only be parameter    ex: [BIT-1:0] port_A;
##  parameter name must be capital              ex:  parameter DATA_WIDTH
##  last line in port list must be ");"
## ex:
#    module axis_top_ver1126 #(
#        parameter DATA_WIDTH = 32,
#        parameter NUMBER_OF_INPUT_WORDS = 32
#        )
#    (
#        input    axi_clk,
#        input    axi_reset_n,
#        input    s_axis_valid,                    //AXI4-S slave i/f
#        input [DATA_WIDTH-1:0] s_axis_data,
#        output   s_axis_ready, 
#        output  m_axis_valid,                   //AXI4-S master i/f
#        output reg [DATA_WIDTH-1:0] m_axis_data,
#        input    m_axis_ready, 
#
#        input s_axis_last,
#        output m_axis_last
#        );
#   It will read the part above in verilog file, seprate file with ";"
###################################################################
core_pad_limit = raw_input("Choose core or pad limit ,default is core limit ? c/p \n") or "c"
file_name = raw_input("Choose file name or default name CHIP \n") or "CHIP"
TOP_module_name = raw_input("Choose TOP module name or default name TOP \n") or "TOP"

Continue_flag =0
if(core_pad_limit == "c"):
    print("Core limit \n")
    Continue_flag=1
elif(core_pad_limit == "p"):
    print("pad limit")
    Continue_flag=1
else:
    print("Error input value, only c or l as input value\n")
    Continue_flag =0
    print("Generate Failed...\n")

physical_cell_list=[]

if(Continue_flag):
    verilog_file_location = "../verilog/axis_top_ver1126_tcb.v"
    print("Output File name is "+file_name+".v")
    print("TOP module name is "+TOP_module_name)
    print("verilog file location is at"+verilog_file_location)    


    Verilog_file = open(verilog_file_location,"r")              #Get port infomation
    Verilog_txt = Verilog_file.read()
    sep=Verilog_txt.find(";")                               
    input_output_txt = Verilog_txt[0:sep]
    list_input_output_txt = list(input_output_txt.split("\n"))  #split port infomation

    parameter_dictionary={}

    for line in list_input_output_txt:      #Get parameter number
        parameter_index_in_line = line.find("parameter")
        if(parameter_index_in_line == -1):
            pass
        else:
            # print(line)
            for capital_index,letter in enumerate(line):
                if(letter.isupper()):
                    find_close_space = line[capital_index:].find(" ")
                    dictionary_key = line[capital_index:find_close_space+capital_index]
                    # print(line[capital_index:find_close_space+capital_index])
                    # dictionary_value=
                    break
            dictionary_value = "".join(x for x in line if x.isdigit()) 
            # print(dictionary_value)
            parameter_dictionary [dictionary_key] = dictionary_value
            # parameter_dictionary

    # print(parameter_dictionary)

    port_name_dictionary={}
    for line_index,list_ele in enumerate(list_input_output_txt):  # each line 
        in_out_port_type=""
        port_name=""
        number_of_bit=1
        list_ele = list_ele.split(" ")      # each word in line
        # print(list_ele,line_index)
        if(("input" in list_ele) or "output" in list_ele):
            for word in list_ele:
                if(word == "input"):            #port type
                    # print(word)
                    in_out_port_type = "input"
                if(word == "output"):
                    # print(word)
                    in_out_port_type = "output"
                if("," in word):                #port name
                    # print(word[:-1])
                    port_name = word[:-1]        
                for parameter_txt in parameter_dictionary:
                    if(parameter_txt in word):
                        number_of_bit= int(parameter_dictionary[parameter_txt]) -1
                        # print(number_of_bit)
                if(port_name==""):
                    pass
                else:
                    port_name_dictionary[port_name] = [in_out_port_type,number_of_bit]

    last_one = list_input_output_txt[-2].split(" ") # list_input_output_txt[-1] is ")" ,deal with last one port in port list
    port_name = last_one[-1]
    in_out_port_type = last_one[-2]
    for parameter_txt in parameter_dictionary:
        if(parameter_txt in last_one):
            number_of_bit= int(parameter_dictionary[parameter_txt]) -1
    port_name_dictionary[port_name] = [in_out_port_type,number_of_bit]



    with open (file_name+".v","w") as f: 
        f.write("module "+file_name+"(\n")
        for index,(info) in enumerate(port_name_dictionary.items()):# port declaration
            # print(index,info)
            # print(info[0],info[1])
            port_name = info[0]
            port_type = info[1][0]
            port_bit_number = info[1][1]

            f.write(port_type+" ")
            if(port_bit_number == 1):
                pass
            else:
                f.write("["+str(port_bit_number)+":0] ")
            f.write(port_name+" ")

            if(index == len(port_name_dictionary)-1):
                pass
            else:
                f.write(",")

            f.write("\n")
        f.write(");\n")

        for index,(info) in enumerate(port_name_dictionary.items()):# wire declaration
            port_name = info[0]
            port_type = info[1][0]
            port_bit_number = info[1][1]
            f.write("wire ")
            if(port_bit_number==1):
                pass
            else:
                f.write("["+str(port_bit_number)+":0] ")
            f.write("i_"+port_name+";\n")
        f.write(TOP_module_name+" DUT (")
        for index,(info) in enumerate(port_name_dictionary.items()):# TOP unit port
            port_name = info[0]
            f.write("."+port_name+"(i_"+port_name+")")
            if(index ==len(port_name_dictionary)-1):
                pass
            else:
                f.write(",")
        f.write(");\n")

        if(core_pad_limit=="c"):        #pad name
            input_pad_name = "XMC"
            output_pad_name = 'YA2GSC'
        else:
            input_pad_name = "XMD"
            output_pad_name = 'YA2GSD'

        physical_naming_index = 0
        for index,(info) in enumerate(port_name_dictionary.items()): #input pad
            port_name = info[0]
            port_type = info[1][0]
            port_bit_number = info[1][1]
            # print(port_type)
            f.write("\n")
            if(port_type=="input"):
                if(port_bit_number==1):
                    f.write(input_pad_name+" ipad_in"+str(physical_naming_index))
                    f.write("(.O(i_"+port_name+"), .I("+port_name+"),")
                    f.write(".PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_));")
                    physical_cell_list.append("ipad_in"+str(physical_naming_index))
                    physical_naming_index=physical_naming_index+1
                else:
                    sub_naimg_idx=0
                    for bit in range(port_bit_number+1):
                        f.write(input_pad_name+" ipad_in"+str(physical_naming_index))
                        f.write("(.O(i_"+port_name+"["+str(sub_naimg_idx)+"]), .I("+port_name+"["+str(sub_naimg_idx)+"]),")
                        f.write(".PU(n_Logic0_), .PD(n_Logic0_), .SMT(n_Logic0_));\n")
                        physical_cell_list.append("ipad_in"+str(physical_naming_index))
                        physical_naming_index=physical_naming_index+1
                        sub_naimg_idx=sub_naimg_idx+1
        

        for index,(info) in enumerate(port_name_dictionary.items()): #input pad
            port_name = info[0]
            port_type = info[1][0]
            port_bit_number = info[1][1]
            # print(port_type)
            f.write("\n")
            if(port_type=="output"):
                if(port_bit_number==1):
                    # print(port_bit_number)
                    f.write(output_pad_name+" opad_out"+str(physical_naming_index))
                    f.write("(.SR(n_Logic0_),")
                    f.write(".O("+port_name+"), .I(i_"+port_name+"),")
                    f.write(".E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_));")
                    physical_cell_list.append("opad_out"+str(physical_naming_index))
                    physical_naming_index=physical_naming_index+1
                else:
                    # print(port_bit_number)
                    sub_naimg_idx=0
                    for bit in range(port_bit_number+1):
                        f.write(output_pad_name+" opad_out"+str(physical_naming_index))
                        f.write("(.SR(n_Logic0_),")
                        f.write(".O("+port_name+"["+str(sub_naimg_idx)+"]), .I(i_"+port_name+"["+str(sub_naimg_idx)+"]),")
                        f.write(".E(n_Logic1_), .E2(n_Logic1_), .E4(n_Logic1_), .E8(n_Logic1_));\n")
                        physical_cell_list.append("opad_out"+str(physical_naming_index))
                        physical_naming_index=physical_naming_index+1
                        sub_naimg_idx=sub_naimg_idx+1

        f.write("TIE0 U1(.O(n_Logic0_));\n")
        f.write("TIE1 U2(.O(n_Logic1_));\n")
        f.write("endmodule\n")

    print("Generate Successfully...\n")

with open("phy_list.txt","w") as f:
    for ele in physical_cell_list:
        f.write(ele)
        f.write(",")