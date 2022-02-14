module fulladder ( 
    input [3:0] a,  
    input [3:0] b,  
    input cin,  
    output reg cout,  
    output reg [3:0] sum);  
      
    always @ (a or b or cin) begin  
        {cout, sum} = a + b + cin;  
    end  
    
endmodule  