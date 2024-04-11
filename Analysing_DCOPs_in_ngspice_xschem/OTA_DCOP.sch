v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 940 0 1740 400 {flags=graph
y1=0.98
y2=1.82
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.541307e-07
x2=5.15413e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ota_1stage_op.raw
sim_type=tran}
T {tcleval([xschem raw info])} 940 480 0 0 0.4 0.4 {floater=true layer=16}
T {Use to switch to the required raw file / raw file section} 940 650 0 0 0.4 0.4 {}
T {Displays relevant raw files} 940 440 0 0 0.4 0.4 {}
N 480 60 550 60 {
lab=pdio}
N 500 0 590 0 {
lab=vdda}
N 430 60 450 60 {
lab=pdio}
N 420 0 500 0 {
lab=vdda}
N 390 230 390 330 {
lab=#net1}
N 450 60 480 60 {
lab=pdio}
N 390 120 470 120 {
lab=pdio}
N 470 60 470 120 {
lab=pdio}
N 390 0 420 0 {
lab=vdda}
N 390 0 390 30 {
lab=vdda}
N 590 0 590 30 {
lab=vdda}
N 590 60 630 60 {
lab=vdda}
N 630 0 630 60 {
lab=vdda}
N 590 0 630 0 {
lab=vdda}
N 350 60 390 60 {
lab=vdda}
N 350 0 350 60 {
lab=vdda}
N 350 0 390 0 {
lab=vdda}
N 390 390 390 440 {
lab=vtail}
N 390 440 590 440 {
lab=vtail}
N 590 390 590 440 {
lab=vtail}
N 390 360 430 360 {
lab=vssa}
N 550 360 590 360 {
lab=vssa}
N 490 540 490 590 {
lab=#net2}
N 60 540 60 590 {
lab=ibias_1u}
N 190 620 450 620 {
lab=ibias_1u}
N 60 650 60 680 {
lab=vssa}
N 150 680 490 680 {
lab=vssa}
N 490 650 490 680 {
lab=vssa}
N 490 620 530 620 {
lab=vssa}
N 530 620 530 680 {
lab=vssa}
N 490 680 530 680 {
lab=vssa}
N 20 620 60 620 {
lab=vssa}
N 20 620 20 680 {
lab=vssa}
N 20 680 60 680 {
lab=vssa}
N 310 360 350 360 {
lab=vinp}
N 60 400 60 440 {
lab=ibias_1u}
N 60 500 160 500 {
lab=ibias_1u}
N 150 0 350 0 {
lab=vdda}
N 60 680 150 680 {
lab=vssa}
N 100 620 160 620 {
lab=ibias_1u}
N 160 620 190 620 {
lab=ibias_1u}
N 60 0 150 0 {
lab=vdda}
N 390 90 390 120 {
lab=pdio}
N 390 120 390 180 {
lab=pdio}
N 590 90 590 180 {
lab=#net3}
N 490 440 490 480 {
lab=vtail}
N 60 440 60 540 {
lab=ibias_1u}
N 170 500 170 620 {
lab=ibias_1u}
N 160 500 170 500 {
lab=ibias_1u}
N 590 240 590 330 {
lab=vout}
N 630 360 670 360 {
lab=vinn}
N 590 280 670 280 {
lab=vout}
C {pmos4.sym} 570 60 0 0 {name=M6 model=pmosx w=2u l=6u del=0 m=1}
C {pmos4.sym} 410 60 0 1 {name=M5 model=pmosx w=2u l=6u del=0 m=1}
C {nmos4.sym} 370 360 0 0 {name=M3 model=nmos w=8u l=0.18u del=0 m=1}
C {nmos4.sym} 610 360 0 1 {name=M4 model=nmos w=8u l=0.18u del=0 m=1}
C {lab_pin.sym} 430 360 2 0 {name=p4 sig_type=std_logic lab=vssa
}
C {lab_pin.sym} 550 360 0 0 {name=p5 sig_type=std_logic lab=vssa
}
C {nmos4.sym} 470 620 0 0 {name=M2 model=nmos w=2u l=6u del=0 m=2}
C {nmos4.sym} 80 620 0 1 {name=M1 model=nmos w=2u l=6u del=0 m=1}
C {lab_pin.sym} 470 120 2 0 {name=p19 sig_type=std_logic lab=pdio}
C {vsource.sym} 390 210 0 0 {name=Vilhs value=0
format="@name @pinlist @value"}
C {vsource.sym} 590 210 0 0 {name=Virhs value=0
format="@name @pinlist @value"}
C {vsource.sym} 490 510 0 0 {name=Vitail value=0
format="@name @pinlist @value"}
C {ngspice_get_value.sym} 210 280 0 0 {name=r25 node=@m.$\{path\}m3[gm]
descr="gm="}
C {ngspice_get_value.sym} 270 280 0 0 {name=r26 node=v(@m.$\{path\}m3[vth])
descr="vth="}
C {ngspice_get_value.sym} 330 280 0 0 {name=r27 node=i(@m.$\{path\}m3[id])
descr="Id="}
C {ngspice_get_value.sym} 210 320 0 0 {name=r28 node=@m.$\{path\}m3[gds]
descr="gds="}
C {ngspice_get_expr.sym} 270 320 0 0 {name=r29 
node="[format %.4g [expr \{ [ngspice::get_node \{v(@m.$\{path\}m3[vgs])\}] - [ngspice::get_node \{v(@m.$\{path\}m3[vth])\}] \}]]"
descr = Vov
}
C {ngspice_get_expr.sym} 330 320 0 0 {name=r30 
node="[format %.4g [expr \{ [ngspice::get_node \{@m.$\{path\}m3[gm]\}] / [ngspice::get_node \{i(@m.$\{path\}m3[id])\}] \}]]"
descr = gmid
}
C {lab_pin.sym} 590 440 2 0 {name=p2 sig_type=std_logic lab=vtail}
C {ipin.sym} 60 0 0 0 {name=p1 lab=vdda}
C {ipin.sym} 20 680 0 0 {name=p3 lab=vssa}
C {ipin.sym} 60 400 1 0 {name=p6 lab=ibias_1u}
C {ipin.sym} 670 360 2 0 {name=p7 lab=vinn}
C {ipin.sym} 310 360 0 0 {name=p8 lab=vinp}
C {opin.sym} 670 280 0 0 {name=p9 lab=vout}
C {ngspice_get_value.sym} 150 60 0 0 {name=r9 node=@m.$\{path\}m5[gm]
descr="gm="}
C {ngspice_get_value.sym} 210 60 0 0 {name=r10 node=v(@m.$\{path\}m5[vth])
descr="vth="}
C {ngspice_get_value.sym} 270 60 0 0 {name=r11 node=i(@m.$\{path\}m5[id])
descr="Id="}
C {ngspice_get_value.sym} 150 100 0 0 {name=r13 node=@m.$\{path\}m5[gds]
descr="gds="}
C {ngspice_get_expr.sym} 210 100 0 0 {name=r14 
node="[format %.4g [expr \{ [ngspice::get_node \{v(@m.$\{path\}m5[vgs])\}] - [ngspice::get_node \{v(@m.$\{path\}m5[vth])\}] \}]]"
descr = Vov
}
C {ngspice_get_expr.sym} 270 100 0 0 {name=r16 
node="[format %.4g [expr \{ [ngspice::get_node \{@m.$\{path\}m5[gm]\}] / [ngspice::get_node \{i(@m.$\{path\}m5[id])\}] \}]]"
descr = gmid
}
C {ngspice_get_value.sym} 660 60 0 0 {name=r7 node=@m.$\{path\}m6[gm]
descr="gm="}
C {ngspice_get_value.sym} 720 60 0 0 {name=r8 node=v(@m.$\{path\}m6[vth])
descr="vth="}
C {ngspice_get_value.sym} 780 60 0 0 {name=r12 node=i(@m.$\{path\}m6[id])
descr="Id="}
C {ngspice_get_value.sym} 660 100 0 0 {name=r15 node=@m.$\{path\}m6[gds]
descr="gds="}
C {ngspice_get_expr.sym} 720 100 0 0 {name=r17 
node="[format %.4g [expr \{ [ngspice::get_node \{v(@m.$\{path\}m6[vgs])\}] - [ngspice::get_node \{v(@m.$\{path\}m6[vth])\}] \}]]"
descr = Vov
}
C {ngspice_get_expr.sym} 780 100 0 0 {name=r18 
node="[format %.4g [expr \{ [ngspice::get_node \{@m.$\{path\}m6[gm]\}] / [ngspice::get_node \{i(@m.$\{path\}m6[id])\}] \}]]"
descr = gmid
}
C {ngspice_get_value.sym} 750 270 0 0 {name=r19 node=@m.$\{path\}m4[gm]
descr="gm="}
C {ngspice_get_value.sym} 810 270 0 0 {name=r20 node=v(@m.$\{path\}m4[vth])
descr="vth="}
C {ngspice_get_value.sym} 870 270 0 0 {name=r21 node=i(@m.$\{path\}m4[id])
descr="Id="}
C {ngspice_get_value.sym} 750 310 0 0 {name=r22 node=@m.$\{path\}m4[gds]
descr="gds="}
C {ngspice_get_expr.sym} 810 310 0 0 {name=r23 
node="[format %.4g [expr \{ [ngspice::get_node \{v(@m.$\{path\}m4[vgs])\}] - [ngspice::get_node \{v(@m.$\{path\}m4[vth])\}] \}]]"
descr = Vov
}
C {ngspice_get_expr.sym} 870 310 0 0 {name=r24 
node="[format %.4g [expr \{ [ngspice::get_node \{@m.$\{path\}m4[gm]\}] / [ngspice::get_node \{i(@m.$\{path\}m4[id])\}] \}]]"
descr = gmid
}
C {ngspice_get_value.sym} 570 600 0 0 {name=r1 node=@m.$\{path\}m2[gm]
descr="gm="}
C {ngspice_get_value.sym} 630 600 0 0 {name=r2 node=v(@m.$\{path\}m2[vth])
descr="vth="}
C {ngspice_get_value.sym} 690 600 0 0 {name=r3 node=i(@m.$\{path\}m2[id])
descr="Id="}
C {ngspice_get_value.sym} 570 640 0 0 {name=r4 node=@m.$\{path\}m2[gds]
descr="gds="}
C {ngspice_get_expr.sym} 630 640 0 0 {name=r5 
node="[format %.4g [expr \{ [ngspice::get_node \{v(@m.$\{path\}m2[vgs])\}] - [ngspice::get_node \{v(@m.$\{path\}m2[vth])\}] \}]]"
descr = Vov
}
C {ngspice_get_expr.sym} 690 640 0 0 {name=r6 
node="[format %.4g [expr \{ [ngspice::get_node \{@m.$\{path\}m2[gm]\}] / [ngspice::get_node \{i(@m.$\{path\}m2[id])\}] \}]]"
descr = gmid
}
C {ngspice_get_value.sym} -180 580 0 0 {name=r31 node=@m.$\{path\}m1[gm]
descr="gm="}
C {ngspice_get_value.sym} -120 580 0 0 {name=r32 node=v(@m.$\{path\}m1[vth])
descr="vth="}
C {ngspice_get_value.sym} -60 580 0 0 {name=r33 node=i(@m.$\{path\}m1[id])
descr="Id="}
C {ngspice_get_value.sym} -180 620 0 0 {name=r34 node=@m.$\{path\}m1[gds]
descr="gds="}
C {ngspice_get_expr.sym} -120 620 0 0 {name=r35 
node="[format %.4g [expr \{ [ngspice::get_node \{v(@m.$\{path\}m1[vgs])\}] - [ngspice::get_node \{v(@m.$\{path\}m1[vth])\}] \}]]"
descr = Vov
}
C {ngspice_get_expr.sym} -60 620 0 0 {name=r36 
node="[format %.4g [expr \{ [ngspice::get_node \{@m.$\{path\}m1[gm]\}] / [ngspice::get_node \{i(@m.$\{path\}m1[id])\}] \}]]"
descr = gmid
}
C {launcher.sym} 995 615 0 0 {name=h5 
descr="Switch rawfile" 
tclcommand="
xschem raw switch; xschem redraw"

}
C {ngspice_get_value.sym} 850 60 0 0 {name=r37 node=v(@m.$\{path\}m6[vdsat])
descr="vdsat="}
