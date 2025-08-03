v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -30 -90 -20 {lab=#net1}
N -90 -40 -90 -30 {lab=#net1}
N -90 -50 -90 -40 {lab=#net1}
N -90 -60 -90 -50 {lab=#net1}
N -90 -70 -90 -60 {lab=#net1}
N -90 -80 -90 -70 {lab=#net1}
N -90 -80 -80 -80 {lab=#net1}
N -80 -80 -70 -80 {lab=#net1}
N -70 -80 -60 -80 {lab=#net1}
N -60 -80 -50 -80 {lab=#net1}
N -50 -80 -40 -80 {lab=#net1}
N -40 -80 -30 -80 {lab=#net1}
N -30 -80 -20 -80 {lab=#net1}
N -20 -80 -10 -80 {lab=#net1}
N -10 -80 30 -80 {lab=#net1}
N 30 -80 40 -80 {lab=#net1}
N 40 -80 40 -20 {lab=#net1}
N -90 40 -90 110 {lab=GND}
N 370 -80 370 -20 {lab=#net2}
N 240 -80 370 -80 {lab=#net2}
N 240 -80 240 -20 {lab=#net2}
N 240 40 240 110 {lab=GND}
N 240 10 270 10 {lab=GND}
N 270 10 270 110 {lab=GND}
N 80 10 200 10 {lab=#net1}
N 40 -80 100 -80 {lab=#net1}
N 100 -80 100 10 {lab=#net1}
N 40 40 40 110 {lab=GND}
N 10 10 40 10 {lab=GND}
N 10 10 10 110 {lab=GND}
N -90 110 370 110 {lab=GND}
N 370 40 370 110 {lab=GND}
C {isource.sym} -90 10 2 0 {name=Iin value=5u}
C {vsource.sym} 370 10 0 0 {name=Vds value="1 AC 1" }
C {sky130_fd_pr/nfet_01v8_lvt.sym} 220 10 0 0 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 60 10 0 1 {name=M2
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} 80 110 0 0 {name=l1 lab=GND}
C {devices/code.sym} -160 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 440 -320 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
 .CONTROL
  OP
  DC Vds 0 1.8 0.05
  PLOT abs(vds#branch)
  AC DEC 100 100 1000
  **PLOT '1/vm(vds#branch)'
 .ENDC
"}
