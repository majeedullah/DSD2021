`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2021 11:55:51 PM
// Design Name: 
// Module Name: DEC_priority_enc
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

// Malak Majeedullah khan

module DEC_priority_enc(Q, D);
//size and dimensions
input wire [9:0] D;
output reg [3:0] Q;

//logic for 8 bit priority encoder
always@(D)
begin
    casex(D)
    10'b0000000001 : Q = 4'b0000;
    10'b000000001x : Q = 4'b0001;
    10'b00000001xx : Q = 4'b0010;
    10'b0000001xxx : Q = 4'b0011;
    10'b000001xxxx : Q = 4'b0100;
    10'b00001xxxxx : Q = 4'b0101;
    10'b0001xxxxxx : Q = 4'b0110;
    10'b001xxxxxxx : Q = 4'b0111;
    10'b01xxxxxxxx : Q = 4'b1000;
    10'b1xxxxxxxxx : Q = 4'b1001;
    default: Q = 4'bzzzz;
    endcase
end
endmodule



module DEC_priority_enc_TB();
//inputs and outputs for simulations
reg [9:0] D;
wire [3:0] Q;

//setting up values for simulation
initial
begin
    #00 D = 10'b0000000001;
    #10 D = 10'b0000000010;
    #10 D = 10'b0000000100;
    #10 D = 10'b0000001000;
    #10 D = 10'b0000010000;
    #10 D = 10'b0000100000;
    #10 D = 10'b0001000001;                         
    #10 D = 10'b0010000001;
    #10 D = 10'b0100000001;
    #10 D = 10'b1000000001;
    #10 $finish;
end 

//displaying values on TCL console
initial
begin
$display("Author: Malak Majeed ullah khan\n");
$monitor($time,"ns  Input = %b, BCD_Output = %b", D, Q);
end

//instantiation
DEC_priority_enc DB0(Q, D);

endmodule