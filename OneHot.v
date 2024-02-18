`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/07 14:51:24
// Design Name: 
// Module Name: OneHot
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


module OneHot(
    input CLK,RST,
    output reg [7:0] counter_onehot);
    
    reg [27:0] counter_1;
    
    always @(posedge CLK or posedge RST) begin
            if(RST) begin
                counter_onehot <= 8'b1;
                counter_1 <= 8'b0;
            end
            else if (counter_1 == 50000000) begin
                counter_onehot <= counter_onehot * 2;
                counter_1 <= 0;
                
              if (counter_onehot == 128) begin
                counter_onehot <= 8'b1;
                counter_1 <= 0;
              end
            end
            else
                counter_1 <= counter_1 + 1;
 end
endmodule
