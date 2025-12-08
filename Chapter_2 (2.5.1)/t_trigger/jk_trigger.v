module jk_trigger (
    input  wire j,      
    input  wire k,      
    input  wire clk,    
    output reg  q       // выход q (reg, потому что меняется в always)
);

    always @(posedge clk) begin
        case ({j, k})
            2'b00 : q <= q;        // 00 → хранение (ничего не меняем)
            2'b01 : q <= 1'b0;     // 01 → сброс
            2'b10 : q <= 1'b1;     // 10 → установка
            2'b11 : q <= ~q;       // 11 → переключение
        endcase
    end

endmodule



