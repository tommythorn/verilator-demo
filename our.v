module our(
        input clock, 
        output reg [31:0] fn = 0);

   reg [31:0] fn1 = 1;

   always @(posedge clock) begin
      fn <= fn1;
      fn1 <= fn1 + fn;
   end

  initial begin
    $display("Fibonacci numbers:");
  end
endmodule
