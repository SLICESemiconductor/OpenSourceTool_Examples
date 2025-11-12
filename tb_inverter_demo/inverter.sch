v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 80 0 130 {lab=vout}
N -100 0 -40 0 {lab=vin}
N -100 80 -100 160 {lab=vin}
N -100 160 -40 160 {lab=vin}
N -160 80 -100 80 {lab=vin}
N -100 0 -100 80 {lab=vin}
N -0 80 60 80 {lab=vout}
N 0 30 -0 80 {lab=vout}
N 0 -60 0 -30 {lab=vddd}
N -0 190 -0 240 {lab=vssd}
N -160 -60 -0 -60 {lab=vddd}
N -160 240 -0 240 {lab=vssd}
N -0 0 60 0 {lab=vddd}
N 0 160 60 160 {lab=vssd}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 0 0 0 {name=M_PMOS
l=0.13u
w=0.15u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 160 0 0 {name=M_NMOS
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -160 -60 0 0 {name=p1 lab=vddd}
C {ipin.sym} -160 240 0 0 {name=p2 lab=vssd}
C {ipin.sym} -160 80 0 0 {name=p3 lab=vin}
C {opin.sym} 60 80 0 0 {name=p4 lab=vout}
C {lab_pin.sym} 60 0 2 0 {name=p5 sig_type=std_logic lab=vddd}
C {lab_pin.sym} 60 160 2 0 {name=p6 sig_type=std_logic lab=vssd}
C {title.sym} -500 360 0 0 {name=l1 author="Diarmuid Collins|SLICE Semiconductor"}
