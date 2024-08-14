v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -20 -80 -20 {
lab=gate}
N -40 -80 -40 -50 {
lab=drain}
N -40 -20 20 -20 {
lab=bulk}
N -40 10 -40 40 {
lab=source}
C {devices/ipin.sym} -120 -20 0 0 {name=p1 lab=gate}
C {devices/opin.sym} -40 -80 3 0 {name=p2 lab=drain}
C {devices/ipin.sym} 20 -20 2 0 {name=p3 lab=bulk}
C {devices/ipin.sym} -40 40 3 0 {name=p4 lab=source}
C {devices/ngspice_get_value.sym} 100 -30 0 0 {name=r6 
node=@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 180 -30 0 0 {name=r7 
node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vdsat])
descr="vdsat="}
C {devices/ngspice_get_expr.sym} 250 20 0 0 {name=r18 
node="[format %.4g [expr \{[ngspice::get_node [ subst -nocommands \{@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[gm]\}]]/[ngspice::get_node [ subst -nocommands \{i(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[id])\}]]\}]]"
descr = "gmid="}
C {devices/ngspice_get_value.sym} 100 -80 0 0 {name=r1 
node=@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 180 -80 0 0 {name=r2 
node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 250 -80 0 0 {name=r3 
node=i(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[id])
descr="Id="}
C {devices/ngspice_get_value.sym} 250 -30 0 0 {name=r4 
node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 100 20 0 0 {name=r5 
node=v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vds])
descr="vds="}
C {devices/ngspice_get_expr.sym} 170 20 0 0 {name=r8 
node="[format %.4g [expr \{[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vgs])\}]]-[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__nfet_01v8[vth])\}]]\}]]"
descr="Vov="}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -60 -20 0 0 {name=M1
W=0.625
L=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
