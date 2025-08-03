v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 300 -640 1100 -240 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-7.7570097e-07
x2=1.8967025e-05
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
N -170 -0 -170 20 {lab=GND}
N -170 -60 -110 -60 {lab=vth
}
N -50 -60 -10 -60 {lab=mn1}
N 40 -60 70 -60 {lab=mn2}
N 130 -60 190 -60 {lab=mn3}
N 140 -250 140 -60 {lab=mn3}
N 140 -250 170 -250 {lab=mn3}
N 140 -170 170 -170 {lab=mn3}
N 230 -250 230 -170 {lab=vo}
N 230 -170 230 -110 {lab=vo}
N 170 -100 190 -100 {lab=#net1}
N 170 -100 170 -30 {lab=#net1}
N 230 -130 390 -130 {lab=vo}
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
C {vcvs.sym} 230 -80 0 0 {name=E1 value=1000}
C {res.sym} 200 -170 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 200 -250 3 0 {name=C2
m=1
value=27p 
footprint=1206
device="ceramic capacitor"II}
C {vsource.sym} 170 0 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 170 30 0 0 {name=l2 lab=GND}
C {capa.sym} 390 -100 0 0 {name=C3
m=1
value=1p 
footprint=1206
device="ceramic capacitor"II}
C {gnd.sym} 390 -70 0 0 {name=l3 lab=GND}
C {gnd.sym} 230 -50 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} -370 -610 0 0 {name=COMMANDS
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
C {lab_wire.sym} -140 -60 0 0 {name=p1 sig_type=std_logic lab=vth}
C {lab_wire.sym} -30 -60 0 0 {name=p2 sig_type=std_logic lab=mn1}
C {lab_wire.sym} 350 -130 0 0 {name=p3 sig_type=std_logic lab=vo}
C {lab_wire.sym} 60 -60 0 0 {name=p4 sig_type=std_logic lab=mn2}
C {lab_wire.sym} 140 -120 0 0 {name=p5 sig_type=std_logic lab=mn3}
