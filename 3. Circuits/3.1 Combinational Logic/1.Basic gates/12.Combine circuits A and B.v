module top_module (input x, input y, output z);
wire ia1,ib1,ia2,ib2,w1,w2;
    assign ia1=(x^y)&x;
    assign ib1=~(x^y);
    assign ia2=(x^y)&x;
    assign ib2=~(x^y);
    assign w1=ia1|ib1;
    assign w2=ia2&ib2;
    assign z=w1^w2;
endmodule
