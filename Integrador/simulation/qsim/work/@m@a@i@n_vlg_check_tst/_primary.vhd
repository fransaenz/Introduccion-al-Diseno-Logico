library verilog;
use verilog.vl_types.all;
entity MAIN_vlg_check_tst is
    port(
        AC              : in     vl_logic_vector(3 downto 0);
        FLAGS           : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end MAIN_vlg_check_tst;
