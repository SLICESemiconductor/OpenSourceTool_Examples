v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 0 -60 0 {
lab=gate}
N -20 -60 -20 -30 {
lab=source}
N -20 0 40 -0 {
lab=bulk}
N -20 30 -20 60 {
lab=drain}
C {sky130_fd_pr/pfet_01v8.sym} -40 0 0 0 {name=M1
W=2
L=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -100 0 0 0 {name=p1 lab=gate}
C {devices/ipin.sym} -20 -60 1 0 {name=p2 lab=source}
C {devices/ipin.sym} 40 0 2 0 {name=p3 lab=bulk}
C {devices/opin.sym} -20 60 1 0 {name=p4 lab=drain}
C {devices/ngspice_get_value.sym} 120 -10 0 0 {name=r6 
node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 200 -10 0 0 {name=r7 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vdsat])
descr="vdsat="}
C {devices/ngspice_get_expr.sym} 270 40 0 0 {name=r18 
node="[format %.4g [expr \{[ngspice::get_node [ subst -nocommands \{@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[gm]\}]]/[ngspice::get_node [ subst -nocommands \{i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[id])\}]]\}]]"
descr = "gmid="}
C {devices/ngspice_get_value.sym} 120 -60 0 0 {name=r1 
node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 200 -60 0 0 {name=r2 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 270 -60 0 0 {name=r3 
node=i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[id])
descr="Id="}
C {devices/ngspice_get_value.sym} 270 -10 0 0 {name=r4 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 120 40 0 0 {name=r5 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_expr.sym} 190 40 0 0 {name=r8 
node="[format %.4g [expr \{[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vgs])\}]]-[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vth])\}]]\}]]"
descr="Vov="}
