module dLatch (
    input D, E,       
    output reg Q,      
    output Qn          
);
    assign Qn = ~Q;    

    always @(D or E) begin
        if (E)         
            Q <= D;   
    end
endmodule