module full_adder(S,Cout,A,B,C);
input A,B,C;
output S,Cout;
assign S=A^B^C;
assign Cout=(A&B)|(B&C)|(A&C);
endmodule