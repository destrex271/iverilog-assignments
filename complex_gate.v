module complex_gate;

reg a, b, c;
wire t1, t2, t3, z;

assign t1=~c;
assign t2=a&t1;
assign t3=b&c;
assign z=t2^t3;

always @(a or b or c) begin
    #1;  // Small delay to ensure signals update
    $display("a=%b b=%b c=%b t1=%b t2=%b t3=%b z=%b", a, b, c, t1, t2, t3, z);
end


initial begin
    a = 0; b = 0; c = 0;
    #10
    a = 0; b = 0; c = 1;
    #10
    a = 0; b = 1; c = 0;
    #10
    a = 0; b = 1; c = 1;
    #10
    a = 1; b = 0; c = 0;
    #10
    a = 1; b = 0; c = 1;
    #10
    a = 1; b = 1; c = 0;
    #10
    a = 1; b = 1; c = 1;
    #10
    $finish;
end
endmodule
