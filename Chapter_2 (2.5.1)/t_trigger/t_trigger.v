module t_trigger (              // t-trigger на базе JK
    input wire clk,            
    input wire t,               //t - toggle (переключатель)
    output wire q);

    jk_trigger jk_trigger (     // модуль jk-trigger
        .clk(clk),
        .j(t),
        .k(t),
        .q(q));
endmodule

