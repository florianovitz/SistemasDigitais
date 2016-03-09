module trabalho1(
	input clk,
	output luz);

assign luz=clk;

endmodule

module test;

  reg clk;
  always #5 clk <= ~clk;

 trabalho1 D(clk, luz);


  initial begin
    $dumpvars(0, D);
    clk <= 0;
    #500;
    $finish;
  end
endmodule

