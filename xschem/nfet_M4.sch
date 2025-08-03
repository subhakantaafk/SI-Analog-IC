v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 120 280 140 {lab=vg}
N 280 120 340 120 {lab=vg}
N 380 70 380 90 {lab=vd}
N 380 70 510 70 {lab=vd}
N 510 70 510 130 {lab=vd}
N 510 190 510 230 {lab=GND}
N 280 230 510 230 {lab=GND}
N 280 200 280 230 {lab=GND}
N 380 150 380 230 {lab=GND}
N 380 120 410 120 {lab=GND}
N 410 120 410 180 {lab=GND}
N 380 180 410 180 {lab=GND}
N 280 120 280 140 {lab=vg}
N 280 120 340 120 {lab=vg}
N 380 70 380 90 {lab=vd}
N 380 70 510 70 {lab=vd}
N 510 70 510 130 {lab=vd}
N 510 190 510 230 {lab=GND}
N 280 230 510 230 {lab=GND}
N 280 200 280 230 {lab=GND}
N 380 150 380 230 {lab=GND}
N 380 120 410 120 {lab=GND}
N 410 120 410 180 {lab=GND}
N 380 180 410 180 {lab=GND}
C {vsource.sym} 280 170 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 510 160 0 0 {name=Vds value=0 savecurrent=false}
C {lab_wire.sym} 290 120 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 450 70 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/code.sym} 50 160 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -50 -50 0 0 {name=COMMANDS
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
C {gnd.sym} 420 230 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 290 120 0 0 {name=p3 sig_type=std_logic lab=vg}
C {lab_wire.sym} 450 70 0 0 {name=p4 sig_type=std_logic lab=vd}
C {devices/code.sym} 50 160 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -50 -50 0 0 {name=COMMANDS1
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
C {gnd.sym} 420 230 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 360 120 0 0 {name=M4
L=0.9
W=1
nf=1 mult=1
model=nfet_05v0_nvt
spiceprefix=X
}
