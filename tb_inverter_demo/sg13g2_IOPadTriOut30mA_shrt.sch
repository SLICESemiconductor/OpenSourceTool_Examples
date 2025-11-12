v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 120 -40 120 {lab=pad}
N -140 120 -120 120 {lab=c2p}
C {iopin.sym} -140 0 2 0 {name=p3 lab=iovss}
C {iopin.sym} -140 -40 2 0 {name=p4 lab=iovdd}
C {iopin.sym} -140 40 2 0 {name=p5 lab=vdd}
C {iopin.sym} -140 80 2 0 {name=p6 lab=vss}
C {iopin.sym} -140 120 2 0 {name=p8 lab=c2p}
C {iopin.sym} -140 160 2 0 {name=p9 lab=c2p_en}
C {iopin.sym} -40 120 0 0 {name=p2 lab=pad}
C {devices/vsource.sym} -90 120 1 0 {name=Vshrt value=0
format="@name @pinlist @value"}
