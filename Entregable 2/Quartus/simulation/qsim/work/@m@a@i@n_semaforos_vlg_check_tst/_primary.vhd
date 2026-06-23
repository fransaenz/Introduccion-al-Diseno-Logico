library verilog;
use verilog.vl_types.all;
entity MAIN_semaforos_vlg_check_tst is
    port(
        P1r             : in     vl_logic;
        P1v             : in     vl_logic;
        P3r             : in     vl_logic;
        P3v             : in     vl_logic;
        S1a             : in     vl_logic;
        S1r             : in     vl_logic;
        S1v             : in     vl_logic;
        S2a             : in     vl_logic;
        S2r             : in     vl_logic;
        S2v             : in     vl_logic;
        S3a             : in     vl_logic;
        S3r             : in     vl_logic;
        S3v             : in     vl_logic;
        S4a             : in     vl_logic;
        S4r             : in     vl_logic;
        S4v             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MAIN_semaforos_vlg_check_tst;
