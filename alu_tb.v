module alu_tb;

reg [3:0]sel;
reg [7:0]A,B;
wire [15:0]result;
integer i;
alu dut(sel,A,B,result);
initial 
begin
A = 50; B = 10;

for(i = 0; i < 16; i = i+ 1)
begin
    #10;
    sel = i;
end
#10;
end
endmodule
