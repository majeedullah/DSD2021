`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 04:35:02 PM
// Design Name: 
// Module Name: F_AdderTB
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

//Malak Majeed Ullah khan  0344-8952407
module F_AdderTB();
reg a, b, cin;
wire sum, cout;

initial
begin
  #00  a = 1'b0; b = 1'b0; cin = 1'b0;
  #10  a = 1'b0; b = 1'b0; cin = 1'b1;
  #10  a = 1'b0; b = 1'b1; cin = 1'b0;
  #10  a = 1'b0; b = 1'b1; cin = 1'b1;
  #10  a = 1'b1; b = 1'b0; cin = 1'b0;
  #10  a = 1'b1; b = 1'b0; cin = 1'b1;
  #10  a = 1'b1; b = 1'b1; cin = 1'b0;
  #10  a = 1'b1; b = 1'b1; cin = 1'b1;
end

initial
$monitor ($time, "ns, inputs = %b  outputs = %d" , {a, b, cin}, {cout, sum});


F_Adder FA0(sum, cout, a, b, cin  );

endmodule
