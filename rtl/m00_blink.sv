
module m00_blink #(
    parameter integer HALF_PERIOD = 25_000_000
)(
    input  logic clk,
    input  logic rst_n,
    output logic led
);

    logic [24:0] counter;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 25'd0;
            led     <= 1'b0;
        end
        else if (counter == HALF_PERIOD - 1) begin
            counter <= 25'd0;
            led     <= ~led;
        end
        else begin
            counter <= counter + 1'b1;
        end
    end

endmodule
