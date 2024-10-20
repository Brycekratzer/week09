module dLatchSingle (
    input D, E,       
    output reg Q,      
    output Qn          
);
    assign Qn = ~Q;    

    always @(D, E) begin
        if (E)         
            Q <= D;   
    end
endmodule