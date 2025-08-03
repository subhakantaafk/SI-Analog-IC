v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -40 -90 -20 {lab=vg}
N -90 -40 -30 -40 {lab=vg}
N 10 -90 10 -70 {lab=vd}
N 10 -90 140 -90 {lab=vd}
N 140 -90 140 -30 {lab=vd}
N 140 30 140 70 {lab=GND}
N -90 70 140 70 {lab=GND}
N -90 40 -90 70 {lab=GND}
N 10 -10 10 70 {lab=GND}
N 10 -40 40 -40 {lab=GND}
N 40 -40 40 20 {lab=GND}
N 10 20 40 20 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -10 -40 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -90 10 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 140 0 0 0 {name=Vds value=0 savecurrent=false}
C {lab_wire.sym} -80 -40 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 80 -90 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/code.sym} -320 0 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -420 -210 0 0 {name=COMMANDS
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
C {gnd.sym} 50 70 0 0 {name=l1 lab=GND}
