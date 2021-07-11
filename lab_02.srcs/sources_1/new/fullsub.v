`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2021 04:25:38 PM
// Design Name: 
// Module Name: fullsub
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

// Malak Majeed Ullah khan

module fullsub(d, b0, x, y, z); // declaring the fullsub module
output d, b0; // declaring the outputs
input x, y, z; //declaring inputs

assign d=x^y^z; // assigning function for output d
assign b0=(((~(x))&y)|(((~(x))|y)&z)); // assigning function for output b0

endmodule


module fullsubTb();
wire d, b0;
reg x, y, z;
fullsub abc(d, b0, x, y, z);
initial
begin
#00 x=1'b0; y=1'b0; z=1'b0;
#10 x=1'b0; y=1'b0; z=1'b1;
#10 x=1'b0; y=1'b1; z=1'b0;
#10 x=1'b0; y=1'b1; z=1'b1;
#10 x=1'b1; y=1'b0; z=1'b0;
#10 x=1'b1; y=1'b0; z=1'b1;
#10 x=1'b1; y=1'b1; z=1'b0;
#10 x=1'b1; y=1'b1; z=1'b1;
#10 $finish;
end
initial
begin
$display("Auther: Muhammad Riaz Ali Rajpu\n");
$monitor($time, "ns -- x=%b, y=%b, z=%b, d=%b, b0=%b", x, y, z, d, b0);
end
endmodule