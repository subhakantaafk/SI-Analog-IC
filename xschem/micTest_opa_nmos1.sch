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
B 5 37.5 97.5 42.5 102.5 {name=vom dir=inout}
N -860 10 -860 30 {lab=GND}
N -860 -50 -800 -50 {lab=vnmic
}
N -70 -430 -40 -430 {lab=virt}
N -70 -350 -40 -350 {lab=virt}
N 40 50 40 100 {lab=GND}
N -100 40 -100 110 {lab=#net1}
N -230 -50 -160 -50 {lab=virt}
N 420 0 420 10 {lab=vout}
N -100 170 -100 190 {lab=GND}
N 150 -0 420 0 {lab=vout}
N 50 -110 50 -60 {lab=vib5u}
N 420 -240 420 -220 {lab=AVDD}
N 420 -160 420 -130 {lab=GND}
N 10 -240 10 -70 {lab=AVDD}
N 10 -240 420 -240 {lab=AVDD}
N 50 -240 50 -170 {lab=AVDD}
N -160 -50 -60 -50 {lab=virt}
N -100 40 -60 40 {lab=#net1}
N -140 -430 -140 -50 {lab=virt}
N -140 -430 -70 -430 {lab=virt}
N -140 -350 -70 -350 {lab=virt}
N 20 -350 240 -350 {lab=vout}
N 20 -430 240 -430 {lab=vout}
N 240 -430 240 -0 {lab=vout}
N -410 -50 -290 -50 {lab=vn2}
N -600 -50 -470 -50 {lab=vn1}
N -800 -50 -660 -50 {lab=vnmic}
C {vsource.sym} -860 -20 0 0 {name=V1 value="0 AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {res.sym} -630 -50 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {gnd.sym} -860 30 0 0 {name=l1 lab=GND}
C {capa.sym} -440 -50 3 0 {name=C1
m=1
value=4.7u 
footprint=1206
device="ceramic capacitor"II}
C {res.sym} -260 -50 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -10 -350 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -10 -430 3 0 {name=C2
m=1
value=27p 
footprint=1206
device="ceramic capacitor"II}
C {vsource.sym} -100 140 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -100 190 0 0 {name=l2 lab=GND}
C {capa.sym} 420 40 0 0 {name=C3
m=1
value=1p 
footprint=1206
device="ceramic capacitor"II}
C {gnd.sym} 420 70 0 0 {name=l3 lab=GND}
C {gnd.sym} 40 100 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -750 -50 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {opa_nmos1.sym} 140 210 0 0 {name=x1}
C {isource.sym} 50 -140 0 0 {name=I0 value=5u}
C {vsource.sym} 420 -190 0 0 {name=VCC value=1.8 savecurrent=false}
C {gnd.sym} 420 -130 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -140 -130 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 340 -240 0 0 {name=p6 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 340 0 0 0 {name=p7 sig_type=std_logic lab=vout}
C {lab_wire.sym} 50 -90 2 0 {name=p8 sig_type=std_logic lab=vib5u}
C {lab_wire.sym} -360 -50 0 0 {name=p9 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -530 -50 0 0 {name=p10 sig_type=std_logic lab=vn1}
C {simulator_commands_shown.sym} -1060 -1010 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
save all
OP
write micTest_opa_nmos1.raw
AC DEC 100 1 10e6
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
C {devices/code.sym} -1050 -400 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
