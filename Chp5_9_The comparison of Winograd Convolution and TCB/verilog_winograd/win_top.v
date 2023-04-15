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
  // always@(posedge clk)
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
        img_ff[15-i] = img[i*8+:8];
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

    MUL[0]=  $signed(input_transform[0]*41);
    MUL[1]=  $signed(input_transform[1]*129);
    MUL[2]=  $signed(input_transform[2]*20);
    MUL[3]=  $signed(input_transform[3]*108);
    MUL[4]=  $signed(input_transform[4]*85);
    MUL[5]=( $signed(input_transform[5]*1209))>>>2;
    MUL[6]=( $signed(input_transform[6]*53))>>>2;
    MUL[7]=( $signed(input_transform[7]*461))>>>1;
    MUL[8]=  $signed(input_transform[8]*143);
    MUL[9]=( $signed(input_transform[9]*477))>>>2;
    MUL[10]=( $signed(input_transform[10]*445))>>>2;
    MUL[11]=( $signed(input_transform[11]*175))>>>1;
    MUL[12]=  $signed(input_transform[12]*187);
    MUL[13]=( $signed(input_transform[13]*585))>>>1;
    MUL[14]=( $signed(input_transform[14]*209))>>>1;
    MUL[15]=  $signed(input_transform[15]*210);
    output_transform[0] = $signed(MUL[0]+MUL[1]+MUL[2]+MUL[4]+MUL[5]+MUL[6]+MUL[8]+MUL[9]+MUL[10]);
    output_transform[1] = $signed(MUL[1]-MUL[2]+MUL[3]+MUL[5]-MUL[6]+MUL[7]+MUL[9]-MUL[10]+MUL[11]);
    output_transform[2] = $signed(MUL[4]+MUL[5]+MUL[6]-MUL[8]-MUL[9]-MUL[10]+MUL[12]+MUL[13]+MUL[14]);
    output_transform[3] = $signed(MUL[5]-MUL[6]+MUL[7]-MUL[9]+MUL[10]-MUL[11]+MUL[13]-MUL[14]+MUL[15]);
  end
  // always@(posedge clk)
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
