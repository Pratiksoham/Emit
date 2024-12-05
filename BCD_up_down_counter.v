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
