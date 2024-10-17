module top (
    input sw[15:8]
    input btnC
    output led[15:8]
    
);
    wire enabler = btnC;
    // single bit memory
    dLatch dMemorySingle(
        .D(sw[0]),
        .E(enabler),
        .Q(led[0]),
        .Qn(led[1])
    );

    // 8 bit memory system
    demux4bit dmux(
        .data(sw[15:8]),
        .sel(sw[7:6]),
        .A(dmuxDlatch),
        .B(),
        .C(),
        .D(),
        
    );
    
    memblock8bit memBlock(){
        .A(),
        .B(),
        .C(),
        .D(),
        .E(enabler)
    };

    mux4bit mux(){
        .A(),
        .B(),
        .C(),
        .D(),
        .E(enabler)
        .Y(led)
    }
endmodule