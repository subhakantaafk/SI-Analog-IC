v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -10 -40 10 {lab=vg}
N -40 -10 20 -10 {lab=vg}
N 60 -60 60 -40 {lab=vd}
N 60 -60 190 -60 {lab=vd}
N 190 -60 190 0 {lab=vd}
N 190 60 190 100 {lab=GND}
N -40 100 190 100 {lab=GND}
N -40 70 -40 100 {lab=GND}
N 60 20 60 100 {lab=GND}
N 60 -10 90 -10 {lab=GND}
N 90 -10 90 50 {lab=GND}
N 60 50 90 50 {lab=GND}
N -40 -10 -40 10 {lab=vg}
N -40 -10 20 -10 {lab=vg}
N 60 -60 60 -40 {lab=vd}
N 60 -60 190 -60 {lab=vd}
N 190 -60 190 0 {lab=vd}
N 190 60 190 100 {lab=GND}
N -40 100 190 100 {lab=GND}
N -40 70 -40 100 {lab=GND}
N 60 20 60 100 {lab=GND}
N 60 -10 90 -10 {lab=GND}
N 90 -10 90 50 {lab=GND}
N 60 50 90 50 {lab=GND}
C {vsource.sym} -40 40 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 190 30 0 0 {name=Vds value=0 savecurrent=false}
C {lab_wire.sym} -30 -10 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 130 -60 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/code.sym} -270 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -370 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
 op
 plot v(vd)
 plot v(vg)
.endc
"}
C {gnd.sym} 100 100 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -30 -10 0 0 {name=p3 sig_type=std_logic lab=vg}
C {lab_wire.sym} 130 -60 0 0 {name=p4 sig_type=std_logic lab=vd}
C {devices/code.sym} -270 30 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -370 -180 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
 op
 plot v(vd)
 plot v(vg)
.endc
"}
C {gnd.sym} 100 100 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 -10 0 0 {name=M5
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
