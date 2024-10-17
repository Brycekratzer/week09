module memblock8bit(
    input [7:0]A,[7:0]B,[7:0]C,[7:0]D,
    input E,
    output [7:0]OutputData,
);

dLatch memblock1(
    .D(A),
    .E(E),
    .Q(OutputData[7:0])
);

dLatch memblock2(
    .D(B),
    .E(E),
    .Q(OutputData[7:0])
);

dLatch memblock3(
    .D(C),
    .E(E),
    .Q(OutputData[7:0])
);

dLatch memblock4(
    .D(D),
    .E(E),
    .Q(OutputData[7:0])
);

endmodule