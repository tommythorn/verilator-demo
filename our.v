module our(input clock, output y);

   reg [31:0] x = 1, y = 1;

   always @(posedge clock) begin
      //$display("Got %d", x);
      x <= y;
      y <= y + x;
   end

  initial begin
    $display("Hello World");
  end
endmodule
