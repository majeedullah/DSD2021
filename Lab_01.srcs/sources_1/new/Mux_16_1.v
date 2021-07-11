`timescale 1ns / 1ps



// Malak Majeedullah khan
module Mux_16_1(out, s1, s2, D);
//dimensions and sizes
input [15:0] D;   // input data 16 switches 
input [4:0] s1, s2;   // two selector switches 
output out;   // output data

// wires
wire [3:0]c;  //creating internal  wires

//instantiation of the mux 
Mux_4_1 inst0(c[0], s1[0], s2[0], D[3:0] );   // mux 1 
Mux_4_1 inst1(c[1], s1[1], s2[1], D[7:4] );   // mux 2
Mux_4_1 inst2(c[2], s1[2], s2[2], D[11:8]);   // mux 3
Mux_4_1 inst3(c[3], s1[3], s2[3], D[15:12]);  // mux 4

//Final 5th mux to combine all output 
Mux_4_1 inst4(out, s1[4], s2[4], c);

endmodule   // end of design module 




module Mux_16_1_TB();    // creating test bench
//defining ports
reg [15:0]D;  // data
reg [4:0] s1,s2;  // selector 
wire out;     // output 

//instantiation of top level model 
Mux_16_1 Inst5 (out, s1, s2,D);
initial 
begin   // assigning values to the data and switches 
    #00 D = 16'b1100110010101010; s1 = 5'b10100; s2 = 5'b10010;
    #10 D = 16'b1100110101110001; s1 = 5'b10101; s2 = 5'b11110;
    #10 D = 16'b1101010001000111; s1 = 5'b00100; s2 = 5'b10101;
    #10 D = 16'b1101111111110111; s1 = 5'b11111; s2 = 5'b10011;
    #10 $finish; 
end

initial
begin
$display("Malak Majeed Ullah khan");   // display command to display text in console 
// monitoring the output in console
$monitor($time,"ns, Input Data = %b, S1 = %b, S2 = %b, Output Data = %b ", D, s1, s2, out);
end
endmodule  // end of test bench module 
