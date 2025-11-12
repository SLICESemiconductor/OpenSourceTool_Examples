v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -380 180 -80 180 {
lab=ibias}
N -160 -30 -160 20 {
lab=#net1}
N -160 20 100 20 {
lab=#net1}
N 100 -30 100 20 {
lab=#net1}
N -420 210 -420 240 {
lab=vssa}
N -420 240 -40 240 {
lab=vssa}
N -40 210 -40 240 {
lab=vssa}
N -420 60 -420 150 {
lab=ibias}
N -420 120 -320 120 {
lab=ibias}
N -320 120 -320 180 {
lab=ibias}
N -160 -420 -160 -370 {
lab=vdda}
N -160 -420 100 -420 {
lab=vdda}
N 100 -420 100 -370 {
lab=vdda}
N -120 -340 60 -340 {
lab=pdio}
N -160 -280 -60 -280 {
lab=pdio}
N -60 -340 -60 -280 {
lab=pdio}
N -240 -60 -200 -60 {
lab=vinp}
N 140 -60 180 -60 {
lab=vinn}
N 100 -160 180 -160 {
lab=vout}
N 110 -340 140 -340 {
lab=vdda}
N 100 -340 110 -340 {
lab=vdda}
N -200 -340 -170 -340 {
lab=vdda}
N -170 -340 -160 -340 {
lab=vdda}
N 60 -60 90 -60 {
lab=vssa}
N 90 -60 100 -60 {
lab=vssa}
N -150 -60 -120 -60 {
lab=vssa}
N -160 -60 -150 -60 {
lab=vssa}
N -30 180 0 180 {
lab=vssa}
N -40 180 -30 180 {
lab=vssa}
N -460 180 -430 180 {
lab=vssa}
N -430 180 -420 180 {
lab=vssa}
N -160 -180 -160 -90 {
lab=#net2}
N -160 -310 -160 -280 {
lab=pdio}
N -160 -280 -160 -240 {
lab=pdio}
N 100 -310 100 -240 {
lab=#net3}
N 100 -180 100 -160 {
lab=vout}
N 100 -160 100 -90 {
lab=vout}
N -40 20 -40 60 {}
N -40 120 -40 150 {}
C {sky130_fd_pr/nfet_01v8.sym} -180 -60 0 0 {name=M3
W=1
L=0.15
nf=1 
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 120 -60 0 1 {name=M4
W=1
L=0.15
nf=1 
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -140 -340 0 1 {name=M5
W=1
L=2
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -60 180 0 0 {name=M2
W=1
L=2
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -400 180 0 1 {name=M1
W=1
L=2
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 80 -340 0 0 {name=M6
W=1
L=2
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -420 60 3 0 {name=p1 lab=ibias}
C {devices/ipin.sym} -160 -420 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -420 240 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -240 -60 0 0 {name=p4 lab=vinp}
C {devices/ipin.sym} 180 -60 2 0 {name=p5 lab=vinn}
C {devices/opin.sym} 180 -160 0 0 {name=p6 lab=vout}
C {devices/lab_wire.sym} 140 -340 0 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -200 -340 0 1 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 60 -60 0 1 {name=p9 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -120 -60 0 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 0 180 0 0 {name=p11 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -460 180 0 1 {name=p12 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -90 -280 0 0 {name=p13 sig_type=std_logic lab=pdio}
C {devices/ngspice_get_value.sym} 180 -380 0 0 {name=r1 node=@m.$\{path\}m6[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 180 -340 0 0 {name=r15 node=@m.$\{path\}m6[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 240 -380 0 0 {name=r8 node=v(@m.$\{path\}m6[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 240 -340 0 0 {name=r17 
node="[format %.4g [expr \{ [ngspice::get_node \{v(@m.$\{path\}m6[vgs])\}] - [ngspice::get_node \{v(@m.$\{path\}m6[vth])\}] \}]]"
descr = Vov}
C {devices/ngspice_get_value.sym} 300 -380 0 0 {name=r12 node=i(@m.$\{path\}m6[id])
descr="Id="}
C {devices/ngspice_get_value.sym} 300 -340 0 0 {name=r37 node=v(@m.$\{path\}m6[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 360 -380 0 0 {name=r18 
node="[format %.4g [expr \{ [ngspice::get_node \{@m.$\{path\}m6[gm]\}] / [ngspice::get_node \{i(@m.$\{path\}m6[id])\}] \}]]"
descr = gmid}
C {devices/vsource.sym} -160 -210 0 0 {name=Vilhs value=0 savecurrent=false}
C {devices/vsource.sym} 100 -210 0 0 {name=Virhs value=0 savecurrent=false}
C {devices/vsource.sym} -40 90 0 0 {name=Vitail value=0 savecurrent=false}
