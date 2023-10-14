module full_adder_tb;
    reg A,B,C;
    wire S,Cout;
    full_adder f1(S,Cout,A,B,C);
    initial 
    begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0,full_adder_tb);
        $monitor("%0t,S=%b,Cout=%b,A=%b,B=%b,C=%b",$time,S,Cout,A,B,C);
        A=1;B=0;C=0;
        #5 A=0;B=1;C=1;
        #5 A=0;B=1;C=0;
    end
    endmodule
