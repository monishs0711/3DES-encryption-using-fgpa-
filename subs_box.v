`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 22:53:42
// Design Name: 
// Module Name: subs_box
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


module subs_box(
    input [1:48] o,
    input [1:32] l,
    output [1:32] R_
    );
    wire [1:6]b1,b2,b3,b4,b5,b6,b7,b8;
    assign {b1,b2,b3,b4,b5,b6,b7,b8}= o;
    wire [1:4]oo1,oo2,oo3,oo4,oo5,oo6,oo7,oo8;
    
//48 bit result now to be split into 8 groups of 6 bits
    S1 s1(oo1,b1);
    S2 s2(oo2,b2);
    S3 s3(oo3,b3);
    S4 s4(oo4,b4);
    S5 s5(oo5,b5);
    S6 s6(oo6,b6);
    S7 s7(oo7,b7);
    S8 s8(oo8,b8);
    wire [1:32] r;
    assign r={oo1,oo2,oo3,oo4,oo5,oo6,oo7,oo8};
    assign R_=r^l; 
    
endmodule
