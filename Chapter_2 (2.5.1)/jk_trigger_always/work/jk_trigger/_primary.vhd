library verilog;
use verilog.vl_types.all;
entity jk_trigger is
    port(
        j               : in     vl_logic;
        k               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end jk_trigger;
