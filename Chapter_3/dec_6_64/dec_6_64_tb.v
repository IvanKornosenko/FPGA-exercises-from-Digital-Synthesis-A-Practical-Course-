`timescale 1 ns / 1 ps

module dec_6_64_tb;

    reg [5:0] in;
    reg en;
    wire [63:0] out;

  //Нужно сделать подключение

    dec_6_64 uut (
        .in(in),
        .en(en),
        .out(out)
    );

    integer i;
        initial 
        begin
            en = 0;
            in = 0;
            #10;
    //Проверка отключения
            en = 0;
            in = 6'd7;
            #10;
            $display("en=0, in=7, out=%b", out);

    // Включаем декодер и перебираем все значения
            en = 1;
            for (i = 0; i < 64; i = i + 1) 
            begin
            in = i;
            #5;
            $display("in=%0d, out=%b", i, out);
            end

            $finish;
        end

endmodule
    
