// // FDRE: D Flip-Flop with Clock Enable and Synchronous Reset
// // UltraScale
// // Xilinx HDL Language Template, version 2019.1
// FDRE #(
// .INIT(1'b0), // Initial value of register, 1'b0, 1'b1
// // Programmable Inversion Attributes: Specifies the use of the built-in programmable inversion
// .IS_C_INVERTED(1'b0), // Optional inversion for C
// .IS_D_INVERTED(1'b0), // Optional inversion for D
// .IS_R_INVERTED(1'b0) // Optional inversion for R
// )
// FDRE_inst (
// .Q(Q), // 1-bit output: Data
// .C(C), // 1-bit input: Clock
// .CE(CE), // 1-bit input: Clock enable
// .D(D), // 1-bit input: Data
// .R(R) // 1-bit input: Synchronous reset
// );
// // End of FDRE_inst instantiation

module FDRE #(parameter INIT=0, IS_C_INVERTED=0, IS_D_INVERTED=0, IS_R_INVERTED=0)
(
    output reg Q,
    input C,
    input CE,
    input R,
    input D
);

always @(posedge C)
    if(R)
      Q <= 0;
    else if(CE)
      Q <= D;

endmodule
