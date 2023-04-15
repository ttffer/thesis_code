import random

print("Top design File generating")
iovcc_list=[]   #10
iognd_list=[]   #10
corevcc_list=[] #5
coregnd_list=[] #5
number_of_core_power=2
number_of_IO_power=5
for i in range(1,number_of_core_power+1):
    corevcc_list.append("core_vcc"+str(i))
    coregnd_list.append("core_gnd"+str(i))
for i in range(1,number_of_IO_power+1):
    iovcc_list.append("io_vcc"+str(i))
    iognd_list.append("io_gnd"+str(i))



with open("../phy_list.txt",'r') as f:
    txt =f.read()
    list_txt = list(txt.split(","))  #split port infomation #73
list_txt.remove("")

# print(iovcc_list,iognd_list)
# print(len(list_txt))
totoal_len = len(list_txt)+len(iovcc_list)+len(iognd_list)+len(coregnd_list)+len(corevcc_list)

total_pad=[]

for l in [list_txt,iovcc_list,iognd_list,coregnd_list,corevcc_list]:
    total_pad+=l
print("port len",len(list_txt))
print("IO VCC len",len(iovcc_list))
print("IO GND len",len(iognd_list))
print("CORE VCC len",len(corevcc_list))
print("CORE GND len",len(coregnd_list))
print(len(total_pad))
side_list=[15,15,14,14]
total_pad = random.sample(total_pad,len(total_pad))
# print(total_pad)

with open("io.tdf","w") as f:
    f.write("\
set_pad_physical_constraints -side 1 -pad_name cornerUL\n\
set_pad_physical_constraints -side 2 -pad_name cornerUR\n\
set_pad_physical_constraints -side 3 -pad_name cornerLR\n\
set_pad_physical_constraints -side 4 -pad_name cornerLL\n\n")

    totoal_pad_idx=0
    for idx,side_size in enumerate(side_list) :
        for order in range(1,side_size+1):
            f.write("set_pad_physical_constraints ")
            f.write("-side "+str(idx+1))
            f.write(" -pad_name ")
            f.write(total_pad[totoal_pad_idx])
            totoal_pad_idx+=1
            f.write("   -order "+str(order))
            f.write(" -min_left_iospace 16 -min_right_iospace 16\n")
        f.write("\n")

