`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2021 12:23:09 AM
// Design Name: 
// Module Name: FourBit_Adder
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
// 033-17-0024

module FourBit_Adder(carry_out, sum, A, B, c_in);

input [3:0] A,B;
input c_in;
output [3:0] sum;
output carry_out;

//wires
wire c1,c2,c3;


//instantiating the full adder
Full_Adder FA0(c1, sum[0], A[0], B[0], c_in);
Full_Adder FA1(c2, sum[1], A[1], B[1], c1);
Full_Adder FA2(c3, sum[2], A[2], B[2], c2);
Full_Adder FA3(carry_out, sum[3], A[3], B[3], c3);

endmodule



module Four_BitAdder_TB();
reg [3:0] A, B;
reg c_in;
wire [3:0] sum;
wire carry_out;

//instantiate
FourBit_Adder AB0(carry_out, sum, A, B, c_in);

initial
begin
    #00 A = 4'b0111; B = 4'b0001; c_in = 1'b0;
    #10 A = 4'b1110; B = 4'b1011; c_in = 1'b0;
    #10 A = 4'b0101; B = 4'b0011; c_in = 1'b0;
    #10 A = 4'b1101; B = 4'b1011; c_in = 1'b0;
    #10 $finish;
end
initial
begin
$display("Author: Malak Majeed Ullah khan\n");
$monitor($time, "ns, A = %d, B = %d, sum = %d", A, B, {carry_out, sum});
end

endmodule