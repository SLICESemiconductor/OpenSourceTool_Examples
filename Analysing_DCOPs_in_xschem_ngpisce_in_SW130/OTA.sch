v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -380 180 -80 180 {
lab=ibias}
N -160 70 -160 120 {
lab=#net1}
N -160 120 100 120 {
lab=#net1}
N 100 70 100 120 {
lab=#net1}
N -160 -70 -160 10 {
lab=pdio}
N 100 -70 100 10 {
lab=vout}
N -40 120 -40 150 {
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
N -160 -180 -160 -130 {
lab=vdda}
N -160 -180 100 -180 {
lab=vdda}
N 100 -180 100 -130 {
lab=vdda}
N -120 -100 60 -100 {
lab=pdio}
N -160 -40 -60 -40 {
lab=pdio}
N -60 -100 -60 -40 {
lab=pdio}
N -240 40 -200 40 {
lab=vinp}
N 140 40 180 40 {
lab=vinn}
N 100 -20 180 -20 {
lab=vout}
N 110 -100 140 -100 {
lab=vdda}
N 100 -100 110 -100 {
lab=vdda}
N -200 -100 -170 -100 {
lab=vdda}
N -170 -100 -160 -100 {
lab=vdda}
N 60 40 90 40 {
lab=vssa}
N 90 40 100 40 {
lab=vssa}
N -150 40 -120 40 {
lab=vssa}
N -160 40 -150 40 {
lab=vssa}
N -30 180 0 180 {
lab=vssa}
N -40 180 -30 180 {
lab=vssa}
N -460 180 -430 180 {
lab=vssa}
N -430 180 -420 180 {
lab=vssa}
C {sky130_fd_pr/nfet_01v8.sym} -180 40 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 120 40 0 1 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -140 -100 0 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -100 0 0 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -420 60 3 0 {name=p1 lab=ibias}
C {devices/ipin.sym} -160 -180 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -420 240 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -240 40 0 0 {name=p4 lab=vinp}
C {devices/ipin.sym} 180 40 2 0 {name=p5 lab=vinn}
C {devices/opin.sym} 180 -20 0 0 {name=p6 lab=vout}
C {devices/lab_wire.sym} 140 -100 0 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -200 -100 0 1 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 60 40 0 1 {name=p9 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -120 40 0 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 0 180 0 0 {name=p11 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -460 180 0 1 {name=p12 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -90 -40 0 0 {name=p13 sig_type=std_logic lab=pdio}
