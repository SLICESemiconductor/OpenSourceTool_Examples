v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 60 140 60 {lab=p2c}
N 20 60 50 60 {lab=pad}
C {iopin.sym} 140 60 0 0 {name=p1 lab=p2c}
C {iopin.sym} 20 -140 2 0 {name=p3 lab=iovss}
C {iopin.sym} 20 -180 2 0 {name=p4 lab=iovdd}
C {iopin.sym} 20 -100 2 0 {name=p5 lab=vdd}
C {iopin.sym} 20 -60 2 0 {name=p6 lab=vss}
C {iopin.sym} 20 -20 2 0 {name=p8 lab=c2p}
C {iopin.sym} 20 20 2 0 {name=p9 lab=c2p_en}
C {iopin.sym} 20 60 2 0 {name=p2 lab=pad}
C {devices/vsource.sym} 80 60 1 0 {name=Vshrt value="0"
format="@name @pinlist @value"}
