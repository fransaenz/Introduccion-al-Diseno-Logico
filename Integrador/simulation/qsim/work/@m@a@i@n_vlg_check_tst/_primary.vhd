library verilog;
use verilog.vl_types.all;
entity MAIN_vlg_check_tst is
    port(
        C               : in     vl_logic;
        N               : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        V               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MAIN_vlg_check_tst;
