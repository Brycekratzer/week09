module top (
    input sw[15:8]
    input sw[15:0]
    input btnC
    output led[15:8]
    
);
    wire enabler = btnC;
    // single bit memory
    dLatch dMemory(
        .D(sw[0]),
        .E(enabler),
        .Q(led[0]),
        .Qn(led[1])
    );
endmodule