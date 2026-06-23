library verilog;
use verilog.vl_types.all;
entity MAIN_semaforos is
    port(
        S1r             : out    vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        M               : in     vl_logic;
        CLKin           : in     vl_logic;
        RSTn            : in     vl_logic;
        S2v             : out    vl_logic;
        S2a             : out    vl_logic;
        S2r             : out    vl_logic;
        S3v             : out    vl_logic;
        S3a             : out    vl_logic;
        S3r             : out    vl_logic;
        S4v             : out    vl_logic;
        S4a             : out    vl_logic;
        S4r             : out    vl_logic;
        P1v             : out    vl_logic;
        P1r             : out    vl_logic;
        P3v             : out    vl_logic;
        P3r             : out    vl_logic;
        S1v             : out    vl_logic;
        S1a             : out    vl_logic
    );
end MAIN_semaforos;
