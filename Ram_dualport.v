`timescale 1ns / 1ps

module Ram_dualport(
input [7:0] data1,
input [7:0] data2,
input [5:0] adr1,
input [5:0] adr2,
input we1,
input we2,
input clk,
output reg [7:0] q1, q2
    );
    
    reg [7:0] ram [127:0];
    
    always @(posedge clk)
    begin
        if(we1) begin
            ram[adr1]<=data1;
        end
        else begin 
            q1<=ram[adr1];
        end
    end
    
    always @(posedge clk)
    begin
        if(we2) begin
            ram[adr2]<=data2;
        end
        else begin
            q2<=ram[adr2];
        end
    end
endmodule
