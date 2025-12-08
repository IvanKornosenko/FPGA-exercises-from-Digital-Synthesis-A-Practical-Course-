module gray_to_unary (
    input [3:0] g,   
    output [14:0] unary); //15 бит на выходе в унарном виде. Ограничился 15, потому что на входе 4 бита
    wire [3:0] b;
// Код Грея в бинарный
    assign b[3] = g[3];
    assign b[2] = g[2] ^ g[3];
    assign b[1] = g[3] ^ g[2] ^ g[1];
    assign b[0] = g[3] ^ g[2] ^ g[1] ^ g[0];

//Бинарный в унарный
    assign unary = (1<<b) - 1;
endmodule


