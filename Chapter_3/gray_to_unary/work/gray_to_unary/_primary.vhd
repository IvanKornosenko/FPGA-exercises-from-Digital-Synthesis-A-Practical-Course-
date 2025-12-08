library verilog;
use verilog.vl_types.all;
entity gray_to_unary is
    port(
        g               : in     vl_logic_vector(3 downto 0);
        unary           : out    vl_logic_vector(14 downto 0)
    );
end gray_to_unary;
