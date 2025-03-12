module circuit1_tb(); 
reg x1,x2,x3,clk; 
wire z;
circuit1 uut(.clk(clk),.x1(x1),.x2(x2),.x3(x3),.z(z)); 
always #25 clk = ~clk;
initial begin
clk <= 0;
x1 <= 0; x2 <= 1; x3 <= 0;
#100
x1 <= 1; x2 <= 1; x3 <= 0;
#100
x1 <= 1; x2 <= 1; x3 <= 1;
#100
x1 <= 1; x2 <= 0; x3 <= 1;
#100
x1 <= 1; x2 <= 1; x3 <= 0;
#100
$finish; 
end 
endmodule
config cf_circuit1;
 design WORK.circuit1_tb;
 default liblist WORK;
endconfig
