`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2021 02:09:57 AM
// Design Name: 
// Module Name: Free_Running_shift_reg
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
//////////////////////////////////////////////////////////////////////////////////
module Free_Running_shift_reg
#(parameter N=8)
(
input wire clk, reset,
input wire s_in,
output wire s_out
);

//signal declaration
reg [N-1:0] r_reg;
wire [N-1:0] r_next;

//register body
always@(posedge clk, posedge reset)
if(reset)
r_reg <= 0;
else
r_reg <= r_next;

//next state logic
assign r_next = {s_in , r_reg[N-1:1]};
//output logic
assign s_out = r_reg;

endmodule

// Malak Majeed ullah khan //Test Bench for free running shift register
module FR_Run_SHFT();
reg clk, reset;
reg s_in;
wire s_out;

//istantiation
Free_Running_shift_reg FR0(clk, reset, s_in, s_out);

//clock
initial
clk = 0;

always
#10 clk = ~ clk;
initial   //simulation
begin
reset = 0; s_in = 0;
#10 reset = 1;
@(negedge clk) reset = 0;

s_in = 1;
repeat(8) @(negedge clk);
$stop;
end
endmodule