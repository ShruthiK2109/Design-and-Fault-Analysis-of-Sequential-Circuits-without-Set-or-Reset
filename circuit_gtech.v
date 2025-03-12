module circuit1_gtech ( clk, x1, x2, x3, z ); 
input clk, x1, x2, x3;
output z; 
wire y1, c1;
GTECH_NOR3 G1 ( .A(x2), .B(x3), .C(y1), .Z(c1) );
GTECH_FD1 ff ( .D(c1), .CP(clk), .Q(y1) );
GTECH_OR2 G2 ( .A(c1), .B(x1), .Z(z) );
endmodule

