module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire xor1;
    assign xor1 = ~(in1^in2);
    assign out = xor1^in3;
endmodule
