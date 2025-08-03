v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 -30 -80 -30 {lab=vip}
N -40 -50 -40 -40 {lab=vop}
N -40 -50 40 -50 {lab=vop}
N -150 10 -80 10 {lab=vim}
N -40 20 -40 30 {lab=vom}
N -40 30 40 30 {lab=vom}
C {vcvs.sym} -40 -10 0 0 {name=E1 value=1000}
C {iopin.sym} 40 -50 0 0 {name=p1 lab=vop}
C {iopin.sym} 40 30 0 0 {name=p2 lab=vom}
C {iopin.sym} -150 -30 2 0 {name=p3 lab=vip}
C {iopin.sym} -150 10 2 0 {name=p4 lab=vim}
