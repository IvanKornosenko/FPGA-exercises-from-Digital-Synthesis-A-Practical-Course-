`timescale 1ns/1ps

module tb_gray_to_unary;

    reg  [3:0] g;
    wire [14:0] unary;

    gray_to_unary dut (
        .g(g),
        .unary(unary)
    );

    reg [3:0] bin;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_gray_to_unary);

        // Перебор всех 16 значений бинарного числа
        for (bin = 0; bin < 16; bin = bin + 1) begin
            g = bin ^ (bin >> 1);  // binary -> Gray
            #1;                     // дать время для комбинаторики
            $display("bin=%0d  gray=%b  unary=%b", bin, g, unary);
        end

        #5;
        $finish;
    end

endmodule