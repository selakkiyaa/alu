module alu(
input [3:0]sel,
input [7:0]A,B,
output reg [15:0]result
    );
    
always @(*)begin
case(sel)
        4'b0000: 
           result = A + B ; 
        4'b0001:
           result = A - B ;
        4'b0010:
           result = A * B;
        4'b0011: 
           result = A/B;
        4'b0100: 
           result = A<<1;
         4'b0101:
           result = A>>1;
         4'b0110: 
           result = {A[6:0],A[7]};
         4'b0111:
          result = {A[0],A[7:1]};
          4'b1000: 
          result = A & B;
          4'b1001: 
           result = A | B;
          4'b1010: 
           result = A ^ B;
          4'b1011: 
           result = ~(A | B);
          4'b1100: 
           result = ~(A & B);
          4'b1101: 
           result = ~(A ^ B);
          4'b1110: 
           result = (A>B)?8'd1:8'd0 ;
          4'b1111:  
            result = (A==B)?8'd1:8'd0 ;
default:
    result = 0;
    endcase
end

endmodule
