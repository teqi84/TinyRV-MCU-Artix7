
`timescale 1ns/1ps

module tb_m00_blink;

    logic clk = 0;
    logic rst_n = 0;
    logic led;

    // Generate 50 MHz clock
    always #10 clk = ~clk;

    // Device Under Test
    m00_blink #(
        .HALF_PERIOD(4)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .led(led)
    );

    initial begin
        // Test 1: Reset
        repeat (2) @(posedge clk);
        #1;

        if (led !== 1'b0)
            $fatal(1, "FAIL: Reset");

        // Release reset
        @(negedge clk);
        rst_n = 1'b1;

        // Test 2: First LED toggle
        repeat (4) @(posedge clk);
        @(negedge clk);

        if (led !== 1'b1)
            $fatal(1, "FAIL: First toggle");

        // Test 3: Second LED toggle
        repeat (4) @(posedge clk);
        @(negedge clk);

        if (led !== 1'b0)
            $fatal(1, "FAIL: Second toggle");

        $display("PASS: M00 Blink Testbench");
        $finish;
    end

    // Timeout protection
    initial begin
        #1000;
        $fatal(1, "FAIL: Timeout");
    end

endmodule
