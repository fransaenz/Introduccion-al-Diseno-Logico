library verilog;
use verilog.vl_types.all;
entity MAIN is
    port(
        Z               : out    vl_logic;
        I2              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        N               : out    vl_logic;
        C               : out    vl_logic;
        V               : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0)
    );
end MAIN;
