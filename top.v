module top (
    input [15:0] sw,  
    input btnC,       
    output [1:0] led  
);
    wire enabler = btnC;

    
    wire [7:0] dmux_out;  
    wire [7:0] memoryOut

    // Single bit memory 
    dLatch dMemorySingle(
        .D(sw[0]),       
        .E(enabler),     
        .Q(led[0]),     
        .Qn(led[1])      
    );

    // 8-bit demux connected to switches
    demux8bit dmux(
        .data(sw[15:8]),  
        .sel(sw[7:6]),    
        .A(dmux_out[0]),  
        .B(dmux_out[1]),  
        .C(dmux_out[2]),  
        .D(dmux_out[3])   
    );

    // Connecting demux outputs to D-Latches
    dLatch dMemoryOne(
        .D(dmux_out[0]),  
        .E(enabler),      
        .Q(),             
        .Qn()            
    );

    dLatch dMemoryTwo(
        .D(dmux_out[1]),  
        .E(enabler),      
        .Q(),             
        .Qn()            
    );

    dLatch dMemoryThree(
        .D(dmux_out[2]),  
        .E(enabler),      
        .Q(),            
        .Qn()             
    );

    dLatch dMemoryFour(
        .D(dmux_out[3]),  
        .E(enabler),      
        .Q(),             
        .Qn()             
    );



endmodule