`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2021 01:24:39 AM
// Design Name: 
// Module Name: Stop_watch_TB
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


module Stop_watch_TB();
reg clock_100Mhz; // 100 Mhz clock source FPGA
reg reset; // reset
reg Start;

wire [7:0] Anode_Activate; // anode signals of the 7-segment LED display
wire [6:0] LED_out;

initial 
clock_100Mhz = 0;

 always
 clock_100Mhz = ~clock_100Mhz;
 initial 
    begin
    #00 reset = 0;
    #10 reset = 1;
    @(negedge clock_100Mhz) reset = 0;
    
    end
    Time_multiplexing inst1 ( clock_100Mhz,reset,Anode_Activate,LED_out,Start );
   
endmodule
