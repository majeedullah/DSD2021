`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 05:16:00 PM
// Design Name: 
// Module Name: RGB_lights
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


module RGB_lights(out, in,cc);

input [5:0] in;
output reg [5:0] out;
output reg [5:0] cc;
always@ (*)
begin 

   out[0] = in[0];
   out[1] = in[1];
   out[2] = in[2];
   out[3] = in[3];
   out[4] = in[4];
   out[5] = in[5];
    



end


endmodule
