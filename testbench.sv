// Code your testbench here
// or browse Examples
module tb_t_flipflop;
    reg T, clk;
    wire Q, Qbar;

    // Instantiate the design
    t_flipflop uut (
        .T(T),
        .clk(clk),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock toggles every 5 time units
    end

    // Test sequence
    initial begin
        $display("Time\tT | Q Qbar");
        $monitor("%0t\t%b | %b %b", $time, T, Q, Qbar);

        // Initial state
        T = 0; #10;

        // Toggle on
        T = 1; #10;

        // Toggle again
        T = 1; #10;

        // No change
        T = 0; #10;

        // Toggle again
        T = 1; #10;

        // Finish simulation
        $finish;
    end
endmodule
