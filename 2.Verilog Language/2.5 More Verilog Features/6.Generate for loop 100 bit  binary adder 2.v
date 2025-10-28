module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
	genvar i;
        generate
            for(i=0;i<100;i=i+1)begin:add
                if(i==0)begin
                    full_add f0(a[0],b[0],cin,cout[0],sum[0]);
                end
                else begin    
                    full_add fi(a[i],b[i],cout[i-1],cout[i],sum[i]);
            end
            end
        endgenerate
    
endmodule
module full_add(input a,b,cin,output cout,sum);
    assign {cout,sum}=a+b+cin;
endmodule
