module mux4bit (
    input A[7:0],
    input B[7:0],
    input C[7:0],
    input D[7:0],
    input [1:0]Sel,
    output reg Y
);

    always @(*) begin
        case(Sel)
            2'b00: Y = A;
            2'b01: Y = B;
            2'b10: Y = C;
            2'b11: Y = D;
        endcase
    end
endmodule