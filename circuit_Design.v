
module circuit1(clk,x1,x2,x3,z); 
input x1,x2,x3,clk;
output z;
wire y1,c2,c1,y1flipflop;

GTECH_NOR3 G1(x2,x3,y1,c1);
GTECH_FD1 ff(c1,clk,y1,y1flipflop); 
GTECH_OR2 G2(c1,x1,z);
endmodule


