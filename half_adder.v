module half_adder;

reg a, b;
wire y, c;

assign y=a ^ b;
assign c=a&b;

always @(a or b)
begin
#1
$display("a=%b b=%b y=%b c=%b", a,b,y,c);
end

initial
begin
 a=0;b=0;
#10

 a=0;b=1;
#10

 a=1;b=0;
#10

 a=1;b=1;
#10
$finish;
end
endmodule
