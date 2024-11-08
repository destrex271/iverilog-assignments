module and_not;

reg a,b;
wire z, temp;

not my_not(temp, b);
and my_and(z, a, temp);

initial begin
a = 0; b = 0;
#10
$display("a=%b b=%b temp=%b z=%b", a,b,temp,z);

a = 0; b = 1;
#10
$display("a=%b b=%b temp=%b z=%b", a,b,temp,z);

a = 1; b = 0;
#10
$display("a=%b b=%b temp=%b z=%b", a,b,temp,z);

a = 1; b = 1;
#10
$display("a=%b b=%b temp=%b z=%b", a,b,temp,z);
$finish;

end
endmodule
