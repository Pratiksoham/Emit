module BCD_up_down_counter(
    input wire reset,
    input wire clk,
    output [3:0]count,
);

always@(posedge clk or posedge reset)begin
  if (reset)begin
    count <= 4b'0000;
  end else begin 
    if (up_down)begin
      if (count= 4b'1001')begin
        count <= 4b'0000;
      end else begin 
        count <= count +1;
      end
    end else begin 
      if (count= 4b'0000')begin
        count <= 4b'1001;
      end else begin 
        count <= count -1;
      end 
    end
  end
end
endmodule


module main( 
  input [3:0]a,
  input [3:0]b,
  output [7:0]product,
);
  
  assign a <= 4'b1000
  assign b <= 4'b0000
  wire pp0, pp1, pp2, pp3;
  assign pp0 <= a & {4{b[0]}};
  assign pp1 <= a & {4{b[1]}};
  assign pp2 <= a & {4{b[2]}};
  assign pp3 <= a & {4{b[3]}};
  
  assign product = pp0 + (pp1 << 1)+(pp2 << 2)+(pp3 << 3);
endmodule

