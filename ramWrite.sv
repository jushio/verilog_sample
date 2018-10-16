`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/13 21:39:25
// Design Name: 
// Module Name: asobi
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


module ramWrite(
    input clk,
    input a_we,
    input [4:0] a_addr,
    input [63:0] a_data,
    input b_we,
    input [4:0] b_addr,
    input [63:0] b_data,
    input [4:0] raddr,
    output [63:0] out
    );
    reg [63:0] regfile [31:0];
    
    assign out = regfile[raddr];
    
    always@(posedge clk) begin
        if(a_we)
            regfile[a_addr] <= a_data;
        //else if(b_we)
        if(b_we)
            regfile[b_addr] <= b_data;
    end
endmodule
