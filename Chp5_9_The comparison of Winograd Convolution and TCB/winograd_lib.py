import numpy as np
def conv(img,f):
    temp=np.zeros((2,2))
    for x in range(2):
        for y in range(2):
            temp[x,y]=np.sum(img[0+x:3+x,0+y:3+y]*f)
    return(temp)
#https://blog.csdn.net/qq_40268672/article/details/116563105
def GgGT(g):
    #g=3x3 filter
    #Filter transform
    G=np.asarray([[1,0,0],[0.5,0.5,0.5],[0.5,-0.5,0.5],[0,0,1]])
    Gg=np.matmul(G,g)
    Gg_GT=np.matmul(Gg,G.T)
    return Gg_GT
def BTdB(d):
    #d = 4x4 tile
    #input transform
    BT=np.asarray([[1,0,-1,0],[0,1,1,0],[0,-1,1,0],[0,-1,0,1]])
    BTd=np.matmul(BT,d)
    BTd_B=np.matmul(BTd,BT.T)
    return BTd_B
def winograd_con(tile,filter):
    input_transform     =   BTdB(tile)
    print(input_transform)
    filter_transform    =   GgGT(filter)
    MUL = input_transform * filter_transform
    print(MUL)
    AT=np.asarray([[1,1,1,0],[0,1,-1,1]]) #output transform
    output_transform = np.matmul(np.matmul(AT,MUL),AT.T)
    return output_transform