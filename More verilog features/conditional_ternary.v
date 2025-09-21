module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
	
    // assign intermediate_result1 = compare? true: false;
    wire [7:0]d1,d2;
    assign d1=a<b?a:b;
    assign d2=c<d?c:d;
    assign min=d1<d2?d1:d2;
endmodule
