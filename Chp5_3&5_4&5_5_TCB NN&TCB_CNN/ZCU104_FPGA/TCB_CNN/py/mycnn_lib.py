import numpy as np

def int_conver(np_a):
    #turn img from float to int
    #array like
    input_shape = np_a.shape
    np_a=np_a.reshape(-1)
    for idx,ele in enumerate(np_a):
        np_a[idx] =int((ele+1)/2*255-127)
    return np_a.reshape(input_shape) 

def dir_con(img,filter,sz):
    #convolution
    #img 5x5 filter 5x5 
    # temp=np.zeros((5,5))
    img=img.reshape((sz,sz))
    filter=filter.reshape((sz,sz))
    convolution_result=0
    for col in range(sz):
        for row in range(sz):
            # convolution_result[col,row]=img[col][row]*filter[col][row]
            convolution_result+=img[col][row]*filter[col][row]
    return convolution_result
def conv5x5(img,filter):
    img_sz=img.shape[1]
    temp=np.zeros((img_sz-5+1,img_sz-5+1))
    for col in range(img_sz-5+1):
        for row in range(img_sz-5+1):
            start_x,start_y=(col,row)
            part_img=img[0][start_x+0:start_x+5,start_y+0:start_y+5]
            temp[col,row]=dir_con(part_img,filter,5)
    return temp
def conv_sz(img,filter,sz):
    img_sz=img.shape[1]
    temp=np.zeros((img_sz-sz+1,img_sz-sz+1))
    for col in range(img_sz-sz+1):
        for row in range(img_sz-sz+1):
            start_x,start_y=(col,row)
            part_img=img[0][start_x+0:start_x+sz,start_y+0:start_y+sz]
            temp[col,row]=dir_con(part_img,filter,sz)
    return temp
def myconv(img,filter,sz):
    img_sz=img.shape[1]
    temp=np.zeros((img_sz-sz+1,img_sz-sz+1))
    for col in range(img_sz-sz+1):
        for row in range(img_sz-sz+1):
            start_x,start_y=(col,row)
            part_img=img[start_x+0:start_x+sz,start_y+0:start_y+sz]
            temp[col,row]=dir_con(part_img,filter,sz)
    return temp
def myRelu(x):
    x_temp=x.reshape(-1)
    for idx,ele in enumerate(x_temp):
        if(ele<0):
            x_temp[idx]=0
    
    return x_temp.reshape(x.shape)
def myPool(x):#stride2
    step=int(x.shape[0]/2)
    sz=x.shape[0]
    temp=np.zeros((step,step))
    for col in range(step):
        for row in range(step):
            start_x,start_y=(row,col)
            temp[row][col]=np.amax(x[start_x*2+0:start_x*2+2,start_y*2+0:start_y*2+2])
    return temp
def FullyConnected(input_vector,weight_vector,bias_vector):
    sz=weight_vector.shape
    weight_vector=weight_vector.reshape(-1)
    output_vector=np.zeros(sz[0])
    for output_node in range(sz[0]):
        for input_node in range(sz[1]):
            output_vector[output_node]+=weight_vector[output_node*sz[1]+input_node]*input_vector[input_node]
        output_vector[output_node]+=bias_vector[output_node]
    return output_vector