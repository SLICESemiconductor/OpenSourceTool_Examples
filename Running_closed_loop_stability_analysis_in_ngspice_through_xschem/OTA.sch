v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 530 -820 600 -820 {
lab=pdio}
N 550 -880 640 -880 {
lab=vdda}
N 480 -820 500 -820 {
lab=pdio}
N 470 -880 550 -880 {
lab=vdda}
N 440 -650 440 -550 {
lab=pdio}
N 500 -820 530 -820 {
lab=pdio}
N 440 -760 520 -760 {
lab=pdio}
N 520 -820 520 -760 {
lab=pdio}
N 440 -880 470 -880 {
lab=vdda}
N 440 -880 440 -850 {
lab=vdda}
N 640 -880 640 -850 {
lab=vdda}
N 640 -820 680 -820 {
lab=vdda}
N 680 -880 680 -820 {
lab=vdda}
N 640 -880 680 -880 {
lab=vdda}
N 400 -820 440 -820 {
lab=vdda}
N 400 -880 400 -820 {
lab=vdda}
N 400 -880 440 -880 {
lab=vdda}
N 440 -490 440 -440 {
lab=vtail}
N 440 -440 640 -440 {
lab=vtail}
N 640 -490 640 -440 {
lab=vtail}
N 440 -520 480 -520 {
lab=vssa}
N 600 -520 640 -520 {
lab=vssa}
N 540 -340 540 -290 {
lab=vtail}
N 110 -340 110 -290 {
lab=ibias_1u}
N 240 -260 500 -260 {
lab=ibias_1u}
N 110 -230 110 -200 {
lab=vssa}
N 200 -200 540 -200 {
lab=vssa}
N 540 -230 540 -200 {
lab=vssa}
N 540 -260 580 -260 {
lab=vssa}
N 580 -260 580 -200 {
lab=vssa}
N 540 -200 580 -200 {
lab=vssa}
N 70 -260 110 -260 {
lab=vssa}
N 70 -260 70 -200 {
lab=vssa}
N 70 -200 110 -200 {
lab=vssa}
N 360 -520 400 -520 {
lab=vinp}
N 110 -480 110 -440 {
lab=ibias_1u}
N 110 -380 210 -380 {
lab=ibias_1u}
N 200 -880 400 -880 {
lab=vdda}
N 110 -200 200 -200 {
lab=vssa}
N 150 -260 210 -260 {
lab=ibias_1u}
N 210 -260 240 -260 {
lab=ibias_1u}
N 110 -880 200 -880 {
lab=vdda}
N 440 -790 440 -760 {
lab=pdio}
N 440 -760 440 -700 {
lab=pdio}
N 640 -790 640 -700 {
lab=vout}
N 540 -440 540 -400 {
lab=vtail}
N 110 -440 110 -340 {
lab=ibias_1u}
N 220 -380 220 -260 {
lab=ibias_1u}
N 210 -380 220 -380 {
lab=ibias_1u}
N 640 -640 640 -550 {
lab=vout}
N 680 -520 720 -520 {
lab=vinn}
N 640 -600 720 -600 {
lab=vout}
N 60 -880 110 -880 {
lab=vdda}
N 10 -880 60 -880 {
lab=vdda}
N 540 -400 540 -340 {
lab=vtail}
N 440 -700 440 -650 {
lab=pdio}
N 640 -700 640 -640 {
lab=vout}
C {pmos4.sym} 620 -820 0 0 {name=M6 model=pmosx w=2u l=6u del=0 m=1}
C {pmos4.sym} 460 -820 0 1 {name=M5 model=pmosx w=2u l=6u del=0 m=1}
C {nmos4.sym} 420 -520 0 0 {name=M3 model=nmos w=8u l=0.18u del=0 m=1}
C {nmos4.sym} 660 -520 0 1 {name=M4 model=nmos w=8u l=0.18u del=0 m=1}
C {lab_pin.sym} 480 -520 2 0 {name=p4 sig_type=std_logic lab=vssa
}
C {lab_pin.sym} 600 -520 0 0 {name=p5 sig_type=std_logic lab=vssa
}
C {nmos4.sym} 520 -260 0 0 {name=M2 model=nmos w=2u l=6u del=0 m=1}
C {nmos4.sym} 130 -260 0 1 {name=M1 model=nmos w=2u l=6u del=0 m=1}
C {lab_pin.sym} 520 -760 2 0 {name=p19 sig_type=std_logic lab=pdio}
C {lab_pin.sym} 640 -440 2 0 {name=p2 sig_type=std_logic lab=vtail}
C {ipin.sym} 10 -880 0 0 {name=p1 lab=vdda}
C {ipin.sym} 70 -200 0 0 {name=p3 lab=vssa}
C {ipin.sym} 110 -480 1 0 {name=p6 lab=ibias_1u}
C {ipin.sym} 720 -520 2 0 {name=p7 lab=vinn}
C {ipin.sym} 360 -520 0 0 {name=p8 lab=vinp}
C {opin.sym} 720 -600 0 0 {name=p9 lab=vout}
