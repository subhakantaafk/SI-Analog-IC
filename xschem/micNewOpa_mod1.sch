v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 820 -680 1620 -280 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.1617133e-07
x2=1.8636845e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
sim_type=ac}
N 350 -40 350 -20 {lab=GND}
N 560 -100 590 -100 {lab=mn2}
N 650 -100 710 -100 {lab=mn3}
N 660 -210 690 -210 {lab=mn3}
N 660 -210 660 -160 {lab=mn3}
N 660 -160 660 -100 {lab=mn3}
N 350 -100 500 -100 {lab=mn1}
N 710 -30 710 20 {lab=#net1}
N 750 -210 880 -210 {lab=vo}
N 880 -210 890 -210 {lab=vo}
N 890 -210 890 -60 {lab=vo}
C {vsource.sym} 350 -70 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {gnd.sym} 350 -20 0 0 {name=l1 lab=GND}
C {capa.sym} 530 -100 3 0 {name=C1
m=1
value=4.7u 
footprint=1206
device="ceramic capacitor"II}
C {res.sym} 620 -100 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 720 -210 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 710 50 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 710 80 0 0 {name=l2 lab=GND}
C {gnd.sym} 800 -20 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} 150 -650 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
OP
save all
write micNew.raw
set appendwrite
AC DEC 100 1 10e6
write micNew.raw
**
 meas ac gain_db MAX vdb(vo) FROM=0.1 TO=10e6
  LET f3db = gain_db - 3.0
  print f3db
  MEAS AC fzero WHEN vdb(vo)=f3db RISE=1
  MEAS AC fpole WHEN vdb(vo)=f3db FALL=1
  MEAS AC fmid WHEN vdb(vo)=gain_db
plot vdb(vo)
**Phase Measurement
  LET phase_deg = cph(vo)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero fpole using
  LET phase_zero_ph = phase_mid-45
  MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  tran 1u 5m
.endc
.end
"}
C {lab_wire.sym} 890 -210 0 0 {name=p3 sig_type=std_logic lab=vo}
C {lab_wire.sym} 580 -100 0 0 {name=p4 sig_type=std_logic lab=mn2}
C {lab_wire.sym} 660 -160 0 0 {name=p5 sig_type=std_logic lab=mn3}
C {lab_wire.sym} 440 -100 0 0 {name=p1 sig_type=std_logic lab=mn1}
C {opamp_mod.sym} 820 160 0 0 {name=x1}
