v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -110 -40 -110 {lab=vip}
N 0 -130 0 -120 {lab=#net1}
N 0 -130 80 -130 {lab=#net1}
N -110 -70 -40 -70 {lab=vim}
N 0 -60 0 -50 {lab=#net2}
N 0 -50 80 -50 {lab=#net2}
N 480 -130 570 -130 {lab=vop}
N 480 -70 570 -70 {lab=vom}
N 90 -160 90 -130 {lab=#net1}
N 90 -160 200 -160 {lab=#net1}
N 260 -160 380 -160 {lab=#net3}
N 380 -160 390 -160 {lab=#net3}
N 390 -160 390 -120 {lab=#net3}
N 390 -120 440 -120 {lab=#net3}
N 390 -80 440 -80 {lab=#net2}
N 280 -160 280 -120 {lab=#net3}
N 90 -50 90 -20 {lab=#net2}
N 90 -20 390 -20 {lab=#net2}
N 390 -80 390 -20 {lab=#net2}
N 280 -60 280 -20 {lab=#net2}
N 80 -130 90 -130 {lab=#net1}
N 80 -50 90 -50 {lab=#net2}
C {vcvs.sym} 0 -90 0 0 {name=E2 value=1000}
C {iopin.sym} -110 -110 2 0 {name=p3 lab=vip}
C {iopin.sym} -110 -70 2 0 {name=p4 lab=vim}
C {vcvs.sym} 480 -100 0 0 {name=E1 value=1}
C {iopin.sym} 570 -130 0 0 {name=p7 lab=vop}
C {iopin.sym} 570 -70 0 0 {name=p8 lab=vom}
C {res.sym} 230 -160 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 280 -90 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
