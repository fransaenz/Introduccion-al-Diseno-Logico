library verilog;
use verilog.vl_types.all;
entity MAIN is
    port(
        AC              : out    vl_logic_vector(3 downto 0);
        I               : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        LOADA           : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic_vector(3 downto 0);
        LOADB           : in     vl_logic;
        B               : in     vl_logic_vector(3 downto 0);
        FLAGS           : out    vl_logic_vector(3 downto 0)
    );
end MAIN;
