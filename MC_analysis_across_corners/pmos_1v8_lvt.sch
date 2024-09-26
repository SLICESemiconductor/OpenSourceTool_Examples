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
lab=source}
N -40 -20 20 -20 {
lab=bulk}
N -40 10 -40 40 {
lab=drain}
C {devices/ipin.sym} -120 -20 0 0 {name=p1 lab=gate}
C {devices/ipin.sym} -40 -80 1 0 {name=p2 lab=source}
C {devices/ipin.sym} 20 -20 2 0 {name=p3 lab=bulk}
C {devices/opin.sym} -40 40 1 0 {name=p4 lab=drain}
C {devices/ngspice_get_value.sym} 100 -30 0 0 {name=r6 
node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 180 -30 0 0 {name=r7 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vdsat])
descr="vdsat="}
C {devices/ngspice_get_expr.sym} 250 20 0 0 {name=r18 
node="[format %.4g [expr \{[ngspice::get_node [ subst -nocommands \{@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[gm]\}]]/[ngspice::get_node [ subst -nocommands \{i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[id])\}]]\}]]"
descr = "gmid="}
C {devices/ngspice_get_value.sym} 100 -80 0 0 {name=r1 
node=@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 180 -80 0 0 {name=r2 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 250 -80 0 0 {name=r3 
node=i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[id])
descr="Id="}
C {devices/ngspice_get_value.sym} 250 -30 0 0 {name=r4 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 100 20 0 0 {name=r5 
node=v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vds])
descr="vds="}
C {devices/ngspice_get_expr.sym} 170 20 0 0 {name=r8 
node="[format %.4g [expr \{[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vgs])\}]]-[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8_lvt[vth])\}]]\}]]"
descr="Vov="}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -60 -20 0 0 {name=M1
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ngspice_get_expr.sym} 220 -140 0 0 {name=r9 
xnode="[format %.4g [expr \{[ngspice::get_node [ subst -nocommands \{@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[gm]\}]]/[ngspice::get_node [ subst -nocommands \{i(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[id])\}]]\}]]"
node="[to_eng \{[ngspice::get_node @m.$\{path\}xm1.msky130_fd_pr__pfet_01v8\\\\[gm\\\\]] / [ngspice::get_node i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8\\\\[id\\\\])]\}]"
descr = "gmid="}
C {devices/ngspice_get_expr.sym} 160 -140 0 0 {name=r10 
xnode="[format %.4g [expr \{[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[vgs])\}]]-[ngspice::get_node [subst -nocommands \{v(@m.$\{path\}xm6.msky130_fd_pr__pfet_01v8[vth])\}]]\}]]"
node="[to_eng \{[ngspice::get_node v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8\\\\[vgs\\\\])] - [ngspice::get_node v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8\\\\[vth\\\\])]\}]"
descr="Vov="}
C {devices/ngspice_get_expr.sym} 100 -220 0 0 {name=r11 node="[to_eng [ngspice::get_node \{@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[gm]\}]]"
descr = "gm"}
C {devices/ngspice_get_expr.sym} 100 -180 0 0 {name=r12 node="[to_eng [ngspice::get_node \{@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[gds]\}]]"
descr = "gds"}
C {devices/ngspice_get_expr.sym} 160 -220 0 0 {name=r13 node="[to_eng [ngspice::get_node \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vth])\}]]"
descr = "vth"}
C {devices/ngspice_get_expr.sym} 220 -220 0 0 {name=r14 node="[to_eng [ngspice::get_node \{i(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[id])\}]]"
descr = "id"}
C {devices/ngspice_get_expr.sym} 160 -180 0 0 {name=r15 node="[to_eng [ngspice::get_node \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vdsat])\}]]"
descr = "vdsat"}
C {devices/ngspice_get_expr.sym} 220 -180 0 0 {name=r16 node="[to_eng [ngspice::get_node \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vgs])\}]]"
descr = "vgs"}
C {devices/ngspice_get_expr.sym} 100 -140 0 0 {name=r17 node="[to_eng [ngspice::get_node \{v(@m.$\{path\}xm1.msky130_fd_pr__pfet_01v8[vds])\}]]"
descr = "vds"}
