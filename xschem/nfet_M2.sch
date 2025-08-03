v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -50 -100 -30 {lab=vg}
N -100 -50 -40 -50 {lab=vg}
N 0 -100 0 -80 {lab=vd}
N 0 -100 130 -100 {lab=vd}
N 130 -100 130 -40 {lab=vd}
N 130 20 130 60 {lab=GND}
N -100 60 130 60 {lab=GND}
N -100 30 -100 60 {lab=GND}
N 0 -20 0 60 {lab=GND}
N 0 -50 30 -50 {lab=GND}
N 30 -50 30 10 {lab=GND}
N 0 10 30 10 {lab=GND}
C {vsource.sym} -100 0 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 130 -10 0 0 {name=Vds value=1 savecurrent=false}
C {lab_wire.sym} -90 -50 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 70 -100 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/code.sym} -330 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -430 -220 0 0 {name=COMMANDS
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
C {sky130_fd_pr/nfet_01v8.sym} -20 -50 0 0 {name=M2
L=1
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 30 60 0 0 {name=l1 lab=GND}
