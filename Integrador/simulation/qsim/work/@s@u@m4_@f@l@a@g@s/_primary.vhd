library verilog;
use verilog.vl_types.all;
entity SUM4_FLAGS is
    port(
        V               : out    vl_logic;
        Carry_in        : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C               : out    vl_logic;
        N               : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        Z               : out    vl_logic
    );
end SUM4_FLAGS;
