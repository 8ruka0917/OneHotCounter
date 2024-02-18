`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/07 14:52:37
// Design Name: 
// Module Name: OneHot_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OneHot_test();

    reg CLK, RST;
    wire  [7:0] counter_onehot;
    
    OneHot dut (.RST(RST), .CLK(CLK), .counter_onehot(counter_onehot));
    initial begin
        CLK <=0;
        RST <=0;
       #25 RST <=1;
       #20 RST <=0;
    end
    always #10 begin
      CLK <= ~CLK;
    end
endmodule
