v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {N1 vdda vout vinn vinp ibias_1u vssa OTA_vcvs}
E {}
C {devices/iopin.sym} -230 0 2 0 {name=p1 lab=ibias}
C {devices/ipin.sym} -230 -20 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -230 60 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -230 20 0 0 {name=p4 lab=vinp}
C {devices/ipin.sym} -230 40 0 0 {name=p5 lab=vinn}
C {devices/opin.sym} 10 20 0 0 {name=p6 lab=vout}
C {devices/noconn.sym} 10 20 0 0 {name=l1}
C {devices/noconn.sym} -230 -20 2 0 {name=l2}
C {devices/noconn.sym} -230 0 2 0 {name=l3}
C {devices/noconn.sym} -230 20 2 0 {name=l4}
C {devices/noconn.sym} -230 40 2 0 {name=l5}
C {devices/noconn.sym} -230 60 2 0 {name=l6}
C {devices/architecture.sym} -290 -70 0 0 { nothing here, use global schematic properties }
