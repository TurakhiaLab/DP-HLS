# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
dummies { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


