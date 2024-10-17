module memblock8bit(
    input [31:0]InputData,
    input E,
    output [31:0]OutputData,
);

dLatch memblock1(
    .D(InputData[7:0]),
    .E(E),
    .Q(OutputData[7:0])
);

dLatch memblock2(
    .D(InputData[15:8]),
    .E(E),
    .Q(OutputData[15:8])
);

dLatch memblock3(
    .D(InputData[23:16]),
    .E(E),
    .Q(OutputData[23:16])
);

dLatch memblock4(
    .D(InputData[31:17]),
    .E(E),
    .Q(OutputData[31:17])
);

endmodule