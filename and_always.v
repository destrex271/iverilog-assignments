module and_always;

reg a,b;
wire y;
assign y=a&b;

// Similar to triggers in SQL?
always @(a or b)
begin
$display("a =%b b=%b y=%b", a, b, y);
end


initial
begin

a = 0; b =1;
#10
a = 0; b =0;
#10
a = 1; b =0;
#10
a = 1; b =1;

end
endmodule
