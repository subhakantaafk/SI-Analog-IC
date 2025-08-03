v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 70 -1040 870 -640 {flags=graph
y1=-4.0212999
y2=-2.0213
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.0884417e-05
x2=8.8583135e-06
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
B 5 287.5 67.5 292.5 72.5 {name=vom dir=inout}
N -170 -0 -170 20 {lab=GND}
N -170 -60 -110 -60 {lab=vth
}
N -50 -60 -10 -60 {lab=mn1}
N 40 -60 70 -60 {lab=mn2}
N 200 -280 230 -280 {lab=mn3}
N 200 -200 230 -200 {lab=mn3}
N 290 -280 290 -200 {lab=vo}
N 290 -200 290 -160 {lab=vo}
N 290 20 290 70 {lab=GND}
N 160 10 160 80 {lab=#net1}
N 160 10 200 10 {lab=#net1}
N 130 -60 200 -60 {lab=mn3}
N 200 -280 200 -200 {lab=mn3}
N 190 -60 200 -200 {lab=mn3}
N 290 -160 500 -160 {lab=vo}
N 500 -160 500 -20 {lab=vo}
N 500 -20 520 -20 {lab=vo}
N 520 -20 520 -10 {lab=vo}
N 380 -20 510 -20 {lab=vo}
N 160 140 160 160 {lab=GND}
C {vsource.sym} -170 -30 0 0 {name=V1 value="0 AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {res.sym} -80 -60 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {gnd.sym} -170 20 0 0 {name=l1 lab=GND}
C {capa.sym} 10 -60 3 0 {name=C1
m=1
value=4.7u 
footprint=1206
device="ceramic capacitor"II}
C {res.sym} 100 -60 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 260 -200 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 260 -280 3 0 {name=C2
m=1
value=27p 
footprint=1206
device="ceramic capacitor"II}
C {vsource.sym} 160 110 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 160 160 0 0 {name=l2 lab=GND}
C {capa.sym} 520 20 0 0 {name=C3
m=1
value=1p 
footprint=1206
device="ceramic capacitor"II}
C {gnd.sym} 520 50 0 0 {name=l3 lab=GND}
C {gnd.sym} 290 70 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} -870 -950 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
OP
save all
write micTest.raw
set appendwrite
AC DEC 100 1 10e6
write micTest.raw
**
 meas ac gain_db MAX vdb(vo) FROM=0.1 TO=10e6
  LET f3db = gain_db - 3.0
  print f3db
  MEAS AC fzero WHEN vdb(vo)=f3db RISE=1
  MEAS AC fpole WHEN vdb(vo)=f3db FALL=1
  MEAS AC fmid WHEN vdb(vo)=gain_db
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
C {lab_wire.sym} -140 -60 0 0 {name=p1 sig_type=std_logic lab=vth}
C {lab_wire.sym} -30 -60 0 0 {name=p2 sig_type=std_logic lab=mn1}
C {lab_wire.sym} 500 -160 0 0 {name=p3 sig_type=std_logic lab=vo}
C {lab_wire.sym} 60 -60 0 0 {name=p4 sig_type=std_logic lab=mn2}
C {lab_wire.sym} 170 -60 0 0 {name=p5 sig_type=std_logic lab=mn3}
C {opamp_mod.sym} 310 200 0 0 {name=x1}
