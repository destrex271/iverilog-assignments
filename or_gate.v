module or_gate;
reg a, b;
wire y;

assign y=a|b;

initial begin
a = 0; b= 1;
#10
$display("a=%b b=%b y=%b", a, b, y);
$finish;
end;
endmodule;
