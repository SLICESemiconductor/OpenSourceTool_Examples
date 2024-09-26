v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -20 -60 -20 {
lab=gate}
N -20 -80 -20 -50 {
lab=source}
N -20 -20 40 -20 {
lab=bulk}
N -20 10 -20 40 {
lab=drain}
C {devices/ipin.sym} -100 -20 0 0 {name=p1 lab=gate}
C {devices/ipin.sym} -20 -80 1 0 {name=p2 lab=source}
C {devices/ipin.sym} 40 -20 2 0 {name=p3 lab=bulk}
C {devices/opin.sym} -20 40 1 0 {name=p4 lab=drain}
C {devices/ngspice_get_value.sym} 120 -30 0 0 {name=r6 
node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 200 -30 0 0 {name=r7 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[vdsat])
descr="vdsat="}
C {devices/ngspice_get_expr.sym} 270 20 0 0 {name=r18 
node="[format %.4g [expr \{[ngspice::get_node [ subst -nocommands \{@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[gm]\}]]/[ngspice::get_node [ subst -nocommands \{i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[id])\}]]\}]]"
descr = "gmid="}
C {devices/ngspice_get_value.sym} 200 -80 0 0 {name=r2 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 270 -30 0 0 {name=r4 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 120 20 0 0 {name=r5 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[vds])
descr="vds="}
C {devices/ngspice_get_expr.sym} 190 20 0 0 {name=r8 
node="[format %.4g [expr \{[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[vgs])\}]]-[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[vth])\}]]\}]]"
descr="Vov="}
C {devices/ngspice_get_value.sym} 260 -80 0 0 {name=r11 
node=i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[id])
descr="Id="}
C {devices/ngspice_get_value.sym} 120 -80 0 0 {name=r1 
node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_hvt[gm]
descr="gm="}
C {sky130_fd_pr/pfet_01v8_hvt.sym} -40 -20 0 0 {name=M1
W=1
L=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
