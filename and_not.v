module and_not;

reg a, b;
wire y, temp;

assign temp = ~b;
assign y = a&temp;

always @(a or b)
begin
$display("a=%b b=%b temp=%b y=%b",a,b,temp,y);
end

initial begin
a = 0; b = 0;
#10

a = 0; b = 1;
#10

a = 1; b = 1;
#10

a = 1; b = 0;
#10
$finish;
end
endmodule
