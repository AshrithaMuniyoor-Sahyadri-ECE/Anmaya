Design Code:
module mux_dff (
    input  wire clk,
    input  wire I1,
    input  wire S,
    output reg  Q
);
    wire D;
    assign D = (S == 1'b0) ? Q : I1;

    always @(posedge clk) begin
        Q <= D;
    end
endmodule

Testbench:
module mux_dff (
    input  wire clk,
    input  wire I1,
    input  wire S,
    output reg  Q
);
    wire D;
    assign D = (S == 1'b0) ? Q : I1;

    always @(posedge clk) begin
        Q <= D;
    end
endmodule
