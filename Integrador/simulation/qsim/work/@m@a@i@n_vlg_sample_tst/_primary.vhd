library verilog;
use verilog.vl_types.all;
entity MAIN_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(2 downto 0);
        LOADA           : in     vl_logic;
        LOADB           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MAIN_vlg_sample_tst;
