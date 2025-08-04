// Code your design here
module t_flipflop (
    input T,         // Toggle input
    input clk,       // Clock input
    output reg Q,    // Output
    output reg Qbar  // Complement of output
);
    always @(posedge clk) begin
        if (T == 0) begin
            Q <= Q;           // No change
            Qbar <= Qbar;
        end else begin
            Q <= ~Q;          // Toggle
            Qbar <= ~Qbar;
        end
    end
endmodule
