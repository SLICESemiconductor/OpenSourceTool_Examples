v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -320 180 20 180 {
lab=ibias}
N 260 -30 260 20 {
lab=vtail}
N 60 210 60 240 {
lab=vssa}
N -420 120 -420 150 {
lab=ibias}
N -420 120 -320 120 {
lab=ibias}
N -320 120 -320 180 {
lab=ibias}
N -160 -420 -160 -370 {
lab=vdda}
N 260 -420 260 -370 {
lab=vdda}
N -60 -340 220 -340 {
lab=pdio}
N -160 -280 -60 -280 {
lab=pdio}
N -60 -340 -60 -280 {
lab=pdio}
N -240 -60 -200 -60 {
lab=vinp}
N 300 -60 340 -60 {
lab=vinn}
N 260 -160 340 -160 {
lab=vout}
N 260 -340 300 -340 {
lab=vdda}
N -200 -340 -160 -340 {
lab=vdda}
N 60 180 100 180 {
lab=vssa}
N -460 180 -420 180 {
lab=vssa}
N -160 -310 -160 -280 {
lab=pdio}
N -160 -280 -160 -90 {
lab=pdio}
N 260 -160 260 -90 {
lab=vout}
N 60 20 60 150 {
lab=vtail}
N -420 60 -420 120 {
lab=ibias}
N -380 180 -320 180 {
lab=ibias}
N -120 -340 -60 -340 {
lab=pdio}
N -160 20 60 20 {
lab=vtail}
N 260 -310 260 -160 {
lab=vout}
N -160 -420 260 -420 {
lab=vdda}
N 60 20 260 20 {
lab=vtail}
N -420 240 60 240 {lab=vssa}
N -420 210 -420 240 {lab=vssa}
N -160 -30 -160 20 {
lab=vtail}
N 240 180 260 180 {lab=vssa}
N 240 180 240 220 {lab=vssa}
N 240 220 300 220 {lab=vssa}
N 300 210 300 220 {lab=vssa}
N 300 140 300 150 {lab=vssa}
N 300 140 320 140 {lab=vssa}
N 320 140 320 180 {lab=vssa}
N 300 180 320 180 {lab=vssa}
N 300 220 320 220 {lab=vssa}
N 320 180 320 220 {lab=vssa}
N -160 -60 -120 -60 {
lab=vtail}
N 220 -60 260 -60 {
lab=vtail}
N 400 180 420 180 {lab=vssa}
N 400 180 400 220 {lab=vssa}
N 400 220 460 220 {lab=vssa}
N 460 210 460 220 {lab=vssa}
N 460 140 460 150 {lab=vssa}
N 460 140 480 140 {lab=vssa}
N 480 140 480 180 {lab=vssa}
N 460 180 480 180 {lab=vssa}
N 460 220 480 220 {lab=vssa}
N 480 180 480 220 {lab=vssa}
N 580 -60 580 -50 {lab=vtail}
N 520 -60 580 -60 {lab=vtail}
N 520 -20 520 20 {lab=vtail}
N 520 20 580 20 {lab=vtail}
N 580 10 580 20 {lab=vtail}
N 520 -20 580 -20 {lab=vtail}
N 520 -60 520 -20 {lab=vtail}
N 580 -60 620 -60 {lab=vtail}
N 620 -60 620 20 {lab=vtail}
N 580 20 620 20 {lab=vtail}
C {devices/iopin.sym} -420 60 3 0 {name=p1 lab=ibias}
C {devices/ipin.sym} -160 -420 0 0 {name=p2 lab=vdda}
C {devices/ipin.sym} -420 240 0 0 {name=p3 lab=vssa}
C {devices/ipin.sym} -240 -60 0 0 {name=p4 lab=vinp}
C {devices/ipin.sym} 340 -60 2 0 {name=p5 lab=vinn}
C {devices/opin.sym} 340 -160 0 0 {name=p6 lab=vout}
C {devices/lab_wire.sym} 300 -340 0 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -200 -340 0 1 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 100 180 0 0 {name=p11 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -460 180 0 1 {name=p12 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -90 -280 0 0 {name=p13 sig_type=std_logic lab=pdio}
C {sg13g2_pr/sg13_lv_pmos.sym} 240 -340 0 0 {name=M5
l=2u
w=8u
ng=4
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -140 -340 0 1 {name=M6
l=2u
w=8u
ng=4
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 180 0 0 {name=M1
l=2u
w=8u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -400 180 0 1 {name=M2
l=2u
w=8u
ng=4
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} -500 360 0 0 {name=l1 author="Diarmuid Collins / SLICE Semiconductor"}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 180 0 0 {name=M4
l=2u
w=16u
ng=16
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 280 220 0 0 {name=p9 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 0 20 0 0 {name=p14 sig_type=std_logic lab=vtail}
C {devices/lab_wire.sym} -120 -60 0 0 {name=p18 sig_type=std_logic lab=vtail}
C {devices/lab_wire.sym} 220 -60 0 1 {name=p19 sig_type=std_logic lab=vtail}
C {sg13g2_pr/sg13_lv_nmos.sym} 440 180 0 0 {name=M7
l=1u
w=8u
ng=8
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 440 220 0 0 {name=p20 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 -60 0 1 {name=M9
l=0.5u
w=8u
ng=8
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -20 0 1 {name=M3
l=0.5u
w=32u
ng=16
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 620 -60 2 0 {name=p10 sig_type=std_logic lab=vtail}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 -60 0 0 {name=M10
l=0.5u
w=8u
ng=8
m=4
model=sg13_lv_nmos
spiceprefix=X
}
