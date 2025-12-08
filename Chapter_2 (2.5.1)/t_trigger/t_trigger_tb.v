`timescale 1ns/1ps
module t_trigger_tb;
    reg clk = 0;
    reg t = 0;
    wire q;

    t_trigger dut (
        .clk(clk),
        .t(t),
        .q(q));
    always #5 clk = ~clk;
    initial 
    begin
        #20
        $display("=== T = 1 должен переключаться каждый такт ===");
        t = 1; #70;                     // 7 тактов, должно быть 0101010 или 1010101
        $display("=== T = 0  должен держать состояние ===");
        t = 0; #50;   // ничего не должно меняться

        $display("=== Снова T = 1 ===");
        t = 1; #60;

        #20 $display("Тест закончен");
        $finish;
    end
endmodule

