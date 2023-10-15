module jripplecarryaddertb;
  wire [3:0] Y;
  wire carryout;
  reg [3:0]A,B;
  reg carryin;
  jripplecarryadder jrca(Y,carryout,A,B,carryin);
  initial
  begin
    $monitor($time,"Y=%b,carryout=%d,A=%d,B=%d,carryin=%d",Y,carryout,A,B,carryin);
    A = 0; B = 0; carryin = 0; #50; // Set inputs and add delay
    A = 3; B = 2; carryin = 1; #50; // Set inputs and add delay
    A = 7; B = 10; carryin = 0; #50; // Set inputs and add delay
    A = 15; B = 15; carryin = 1; #50; // Set inputs and add delay
 
  end
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule