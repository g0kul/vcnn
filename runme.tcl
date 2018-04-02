%vivado -mode tcl

open_project vcnn.xpr

reset_run synth_1

launch_runs impl_1 -to_step write_bitstream -jobs 8

wait_on_run impl_1

%write_bitstream design1.bit