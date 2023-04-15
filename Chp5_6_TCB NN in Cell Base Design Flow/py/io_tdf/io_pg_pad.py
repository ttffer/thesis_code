with open("../phy_list.txt",'r') as f:
    txt =f.read()
    list_txt = list(txt.split("\n"))  #split port infomation
    print(list_txt)