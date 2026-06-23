library verilog;
use verilog.vl_types.all;
entity MAIN_semaforos_vlg_sample_tst is
    port(
        CLKin           : in     vl_logic;
        M               : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        RSTn            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MAIN_semaforos_vlg_sample_tst;
