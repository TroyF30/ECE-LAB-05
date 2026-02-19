// Implement top level module
module top(
    input A,B,C,D,
    input [6:0] sw,
//    output Y,
   // output wire w1,
    output [1:0] led
);



    circuit_a circuit_a_inst(
        .A(sw[0]),
        .B(sw[1]),
        .C(sw[2]),
        .D(sw[3]),
        .Y(led[0])
        
    );
    
        circuit_b circuit_b_inst(
        .A(w1),
        .B(sw[4]),
        .C(sw[5]),
        .D(sw[6]),
        .Y(led[1])
    );
    
assign led[0] = w1;

endmodule