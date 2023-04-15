module tb(
    
    );
    
    reg [144*8-1:0] img_location [0:9];
    reg clk,rst,input_valid;
    reg [12*12*8-1:0] img_source;
    wire output_ready;
    
    wire [31:0] number;
    always #5 clk=~clk;
    integer i;
    always@(negedge clk) 
    begin
        i=i+1;
        img_source = img_location[i];
    end
    top_cnn DUT_top(
                    .clk(clk),
                    .rst(rst),
                    .ready(output_ready),
                    .valid(input_valid),
                    .input_img_source(img_source),
                    .predict_number(number)
                );
        
        initial
        begin
            $readmemb("img.mem",img_location);
        end 
    initial
    begin
        $monitor("number is %d",number);
        i=0;
        clk=1'b0;
        rst=1'b1;
        input_valid=1'b1;
        img_source = {(12*12*8){1'b0}};
        #10 rst=1'b0; i=0;
        
        #100 $finish;
    end
    endmodule