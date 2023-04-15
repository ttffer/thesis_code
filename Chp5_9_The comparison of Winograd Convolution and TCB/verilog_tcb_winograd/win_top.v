module win_top#(
    parameter   DATA_WIDTH  =   19
  )(
    input   [4*4*8-1:0] img,
    input   rst,
    input   clk,
    output  reg signed[DATA_WIDTH-1:0]      win_result_0,
    output  reg signed[DATA_WIDTH-1:0]      win_result_1,
    output  reg signed[DATA_WIDTH-1:0]      win_result_2,
    output  reg signed[DATA_WIDTH-1:0]      win_result_3
  );
  reg signed[9:0]   img_ff  [0:4*4-1];
  integer i;
  //always@(posedge clk)
  always@(*)
  begin
    if(rst)
    begin
      for(i=0;i<16;i=i+1)
      begin
        img_ff[i] =0;
      end
    end
    else
    begin
      for(i=0;i<16;i=i+1)
      begin
        img_ff[15-i] =img[i*8+:8];
      end
    end
  end //end always
  reg signed [DATA_WIDTH-1:0]   input_transform  [0:4*4-1];
  reg signed [DATA_WIDTH-1:0]   MUL  [0:4*4-1];
  reg signed [DATA_WIDTH-1:0]   output_transform  [0:3];
  always@(*)
  begin
    input_transform[0] = $signed(img_ff[0]-img_ff[2]-img_ff[8]+img_ff[10]);
    input_transform[1] = $signed(img_ff[1]+img_ff[2]-img_ff[9]-img_ff[10]);
    input_transform[2] = $signed(-img_ff[1]+img_ff[2]+img_ff[9]-img_ff[10]);
    input_transform[3] = $signed(-img_ff[1]+img_ff[3]+img_ff[9]-img_ff[11]);
    input_transform[4] = $signed(img_ff[4]-img_ff[6]+img_ff[8]-img_ff[10]);
    input_transform[5] = $signed(img_ff[5]+img_ff[6]+img_ff[9]+img_ff[10]);
    input_transform[6] = $signed(-img_ff[5]+img_ff[6]-img_ff[9]+img_ff[10]);
    input_transform[7] = $signed(-img_ff[5]+img_ff[7]-img_ff[9]+img_ff[11]);
    input_transform[8] = $signed(-img_ff[4]+img_ff[6]+img_ff[8]-img_ff[10]);
    input_transform[9] = $signed(-img_ff[5]-img_ff[6]+img_ff[9]+img_ff[10]);
    input_transform[10] = $signed(img_ff[5]-img_ff[6]-img_ff[9]+img_ff[10]);
    input_transform[11] = $signed(img_ff[5]-img_ff[7]-img_ff[9]+img_ff[11]);
    input_transform[12] = $signed(-img_ff[4]+img_ff[6]+img_ff[12]-img_ff[14]);
    input_transform[13] = $signed(-img_ff[5]-img_ff[6]+img_ff[13]+img_ff[14]);
    input_transform[14] = $signed(img_ff[5]-img_ff[6]-img_ff[13]+img_ff[14]);
    input_transform[15] = $signed(img_ff[5]-img_ff[7]-img_ff[13]+img_ff[15]);

    MUL[0]=0+(0+(input_transform[0]<<0)+(input_transform[0]<<3)+(input_transform[0]<<5));
    MUL[1]=0+(0+(input_transform[1]<<0)+(input_transform[1]<<7));
    MUL[2]=0+(0+(input_transform[2]<<2)+(input_transform[2]<<4));
    MUL[3]=0+(0-(input_transform[3]<<2)-(input_transform[3]<<4)+(input_transform[3]<<7));
    MUL[4]=0+(0+(input_transform[4]<<0)+(input_transform[4]<<2)+(input_transform[4]<<4)+(input_transform[4]<<6));
    MUL[5]=(0+(0+(input_transform[5]<<0)-(input_transform[5]<<3)+(input_transform[5]<<6)+(input_transform[5]<<7)+(input_transform[5]<<10)))>>>2;
    MUL[6]=(0+(0+(input_transform[6]<<0)+(input_transform[6]<<2)+(input_transform[6]<<4)+(input_transform[6]<<5)))>>>2;
    MUL[7]=(0+(0+(input_transform[7]<<0)+(input_transform[7]<<2)+(input_transform[7]<<3)-(input_transform[7]<<6)+(input_transform[7]<<9)))>>>1;
    MUL[8]=0+(0-(input_transform[8]<<0)+(input_transform[8]<<4)+(input_transform[8]<<7));
    MUL[9]=(0+(0+(input_transform[9]<<0)-(input_transform[9]<<2)-(input_transform[9]<<5)+(input_transform[9]<<9)))>>>2;
    MUL[10]=(0+(0+(input_transform[10]<<0)-(input_transform[10]<<2)-(input_transform[10]<<6)+(input_transform[10]<<9)))>>>2;
    MUL[11]=(0+(0-(input_transform[11]<<0)-(input_transform[11]<<4)+(input_transform[11]<<6)+(input_transform[11]<<7)))>>>1;
    MUL[12]=0+(0-(input_transform[12]<<0)-(input_transform[12]<<2)+(input_transform[12]<<6)+(input_transform[12]<<7));
    MUL[13]=(0+(0+(input_transform[13]<<0)+(input_transform[13]<<3)+(input_transform[13]<<6)+(input_transform[13]<<9)))>>>1;
    MUL[14]=(0+(0+(input_transform[14]<<0)+(input_transform[14]<<4)+(input_transform[14]<<6)+(input_transform[14]<<7)))>>>1;
    MUL[15]=0+(0+(input_transform[15]<<1)+(input_transform[15]<<4)+(input_transform[15]<<6)+(input_transform[15]<<7));
    output_transform[0] = $signed(MUL[0]+MUL[1]+MUL[2]+MUL[4]+MUL[5]+MUL[6]+MUL[8]+MUL[9]+MUL[10]);
    output_transform[1] = $signed(MUL[1]-MUL[2]+MUL[3]+MUL[5]-MUL[6]+MUL[7]+MUL[9]-MUL[10]+MUL[11]);
    output_transform[2] = $signed(MUL[4]+MUL[5]+MUL[6]-MUL[8]-MUL[9]-MUL[10]+MUL[12]+MUL[13]+MUL[14]);
    output_transform[3] = $signed(MUL[5]-MUL[6]+MUL[7]-MUL[9]+MUL[10]-MUL[11]+MUL[13]-MUL[14]+MUL[15]);
  end
  always@(*)
  begin
    if(rst)
    begin
      win_result_0=0;
      win_result_1=0;
      win_result_2=0;
      win_result_3=0;
    end
    else
    begin
      win_result_0=output_transform[0];
      win_result_1=output_transform[1];
      win_result_2=output_transform[2];
      win_result_3=output_transform[3];
    end
  end
endmodule
