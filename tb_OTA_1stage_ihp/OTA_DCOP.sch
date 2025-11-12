v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -320 180 -80 180 {
lab=ibias}
N -220 -30 -220 20 {
lab=vtail}
N 140 -30 140 20 {
lab=vtail}
N -420 210 -420 240 {
lab=vssa}
N -420 240 -40 240 {
lab=vssa}
N -40 210 -40 240 {
lab=vssa}
N -420 120 -420 150 {
lab=ibias}
N -420 120 -320 120 {
lab=ibias}
N -320 120 -320 180 {
lab=ibias}
N -220 -420 -220 -370 {
lab=vdda}
N 140 -420 140 -370 {
lab=vdda}
N -220 -280 -140 -280 {
lab=pdio}
N -140 -340 -140 -280 {
lab=pdio}
N -300 -60 -260 -60 {
lab=vinp}
N 180 -60 220 -60 {
lab=vinn}
N 140 -160 220 -160 {
lab=vout}
N 140 -340 180 -340 {
lab=vdda}
N -260 -340 -220 -340 {
lab=vdda}
N 100 -60 140 -60 {
lab=vssa}
N -220 -60 -180 -60 {
lab=vssa}
N -40 180 0 180 {
lab=vssa}
N -460 180 -420 180 {
lab=vssa}
N -220 -310 -220 -280 {
lab=pdio}
N 140 -310 140 -240 {
lab=#net1}
N 140 -180 140 -160 {
lab=vout}
N 140 -160 140 -90 {
lab=vout}
N -40 20 -40 60 {
lab=vtail}
N -40 120 -40 150 {
lab=#net2}
N -420 60 -420 120 {
lab=ibias}
N -380 180 -320 180 {
lab=ibias}
N -40 20 140 20 {lab=vtail}
N -220 -420 140 -420 {lab=vdda}
N -140 -340 100 -340 {lab=pdio}
N -200 -340 -140 -340 {
lab=pdio}
N -220 20 -40 20 {lab=vtail}
N -360 -420 -220 -420 {lab=vdda}
N -220 -280 -220 -230 {lab=pdio}
N -220 -170 -220 -90 {lab=#net3}
C {devices/iopin.sym} -420 60 3 0 {name=p1 lab=ibias}
C {devices/ipin.sym} -360 -420 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -420 240 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -300 -60 0 0 {name=p4 lab=vinp}
C {devices/ipin.sym} 220 -60 2 0 {name=p5 lab=vinn}
C {devices/opin.sym} 220 -160 0 0 {name=p6 lab=vout}
C {devices/lab_wire.sym} 180 -340 0 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -260 -340 0 1 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 100 -60 0 1 {name=p9 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -180 -60 0 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 0 180 0 0 {name=p11 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -460 180 0 1 {name=p12 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -150 -280 0 0 {name=p13 sig_type=std_logic lab=pdio}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -340 0 0 {name=MPmirr
l=2u
w=10u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -240 -60 0 0 {name=Mdp_p
l=0.13u
w=10u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -200 -340 0 1 {name=MPdio
l=2u
w=10u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -60 0 1 {name=Mdp_n
l=0.13u
w=10u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 180 0 0 {name=MNtail
l=2u
w=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -400 180 0 1 {name=MNdio
l=2u
w=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} -510 380 0 0 {name=l1 author="Diarmuid Collins/SLICE Semiconductor"}
C {devices/lab_wire.sym} 60 20 0 0 {name=p14 sig_type=std_logic lab=vtail}
C {spice_probe.sym} 100 20 0 0 {name=p15 attrs=""}
C {spice_probe.sym} -60 -340 0 0 {name=p16 attrs=""}
C {spice_probe.sym} -280 180 0 0 {name=p17 attrs=""}
C {devices/vsource.sym} -40 90 0 0 {name=Vitail value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} 140 -210 0 0 {name=Virhs value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -220 -200 0 0 {name=Vilhs value=0
format="@name @pinlist @value"}
