`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2023 08:21:46 PM
// Design Name: 
// Module Name: tb_decoder
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


module tb_decoder;

    reg En;
    reg [2:0] I;
    wire [7:0] Y;
    integer i;
    
    decoder_3_8 DUT (.En(En),.I(I),.Y(Y));
        

        initial 
            begin
            En = 1;
            #100;
            I = 3'b000;
            #100
            I = 3'b001;
            #100
            I = 3'b010;
            #100
            I = 3'b011;
            #100
            I = 3'b100;
            #100
            I = 3'b101;
            #100
            I = 3'b110;
            #100
            I = 3'b111;
            #100;
            
            $monitor ("En = %b, I = %b, Y = %b",En,I,Y);
           
            end         
endmodule
