v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 100 -500 900 -100 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1393142e-06
x2=2.1604305e-05
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
N -370 140 -370 160 {lab=GND}
N -160 80 -130 80 {lab=mn2}
N -70 80 -10 80 {lab=mn3}
N -60 -30 -30 -30 {lab=mn3}
N -60 -30 -60 20 {lab=mn3}
N -60 20 -60 80 {lab=mn3}
N -370 80 -220 80 {lab=mn1}
N 120 380 120 410 {lab=GND}
N 340 130 340 140 {lab=#net1}
N 340 130 420 130 {lab=#net1}
N 340 200 340 210 {lab=GND}
N 340 210 420 210 {lab=GND}
N 430 100 430 130 {lab=#net1}
N 430 100 540 100 {lab=#net1}
N 600 100 720 100 {lab=#net2}
N 720 100 730 100 {lab=#net2}
N 730 100 730 140 {lab=#net2}
N 730 140 780 140 {lab=#net2}
N 730 180 780 180 {lab=GND}
N 620 100 620 140 {lab=#net2}
N 430 210 430 240 {lab=GND}
N 430 240 730 240 {lab=GND}
N 730 180 730 240 {lab=GND}
N 620 200 620 240 {lab=GND}
N 420 130 430 130 {lab=#net1}
N 420 210 430 210 {lab=GND}
N 30 -30 820 -30 {lab=vo}
N 820 -30 820 130 {lab=vo}
N -10 80 60 80 {lab=mn3}
N 60 80 60 190 {lab=mn3}
N 60 190 300 190 {lab=mn3}
N 120 150 300 150 {lab=#net3}
N 120 150 120 320 {lab=#net3}
C {vsource.sym} -370 110 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {gnd.sym} -370 160 0 0 {name=l1 lab=GND}
C {capa.sym} -190 80 3 0 {name=C1
m=1
value=4.7u 
footprint=1206
device="ceramic capacitor"II}
C {res.sym} -100 80 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 0 -30 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 120 350 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 120 410 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} -570 -470 0 0 {name=COMMANDS
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
 ** MEAS AC fmid WHEN vdb(vo)=gain_db
  plot vdb(vo)
**Phase Measurement
  LET phase_deg = cph(vo)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  **MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero fpole using
  **LET phase_zero_ph = phase_mid-45
  **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
 ** tran 1u 5m
.endc
.end
"}
C {lab_wire.sym} 600 -30 0 0 {name=p3 sig_type=std_logic lab=vo}
C {lab_wire.sym} -140 80 0 0 {name=p4 sig_type=std_logic lab=mn2}
C {lab_wire.sym} -60 20 0 0 {name=p5 sig_type=std_logic lab=mn3}
C {lab_wire.sym} -280 80 0 0 {name=p1 sig_type=std_logic lab=mn1}
C {vcvs.sym} 340 170 0 0 {name=E2 value=1000}
C {vcvs.sym} 820 160 0 0 {name=E1 value=1}
C {res.sym} 570 100 3 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 620 170 0 0 {name=C2
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 820 190 0 0 {name=l3 lab=GND}
C {gnd.sym} 620 240 0 0 {name=l4 lab=GND}
