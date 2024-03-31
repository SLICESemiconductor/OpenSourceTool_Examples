v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -620 80 -620 {
lab=vssa}
N 80 -670 80 -620 {
lab=vssa}
N 0 -720 40 -720 {
lab=vinp}
N 80 -730 160 -730 {
lab=vout}
N 0 -680 40 -680 {
lab=vinn}
N 160 -780 160 -770 {
lab=vssa}
N 150 -770 160 -770 {
lab=vssa}
N -20 -840 160 -840 {
lab=ibias_1u}
C {vcvs.sym} 80 -700 0 0 {name=E1 value=100}
C {ipin.sym} 0 -620 0 0 {name=p10 lab=vssa}
C {ipin.sym} 0 -720 0 0 {name=p11 lab=vinp}
C {opin.sym} 160 -730 0 0 {name=p12 lab=vout}
C {ipin.sym} -20 -840 0 0 {name=p13 lab=ibias_1u}
C {ipin.sym} 0 -680 0 0 {name=p14 lab=vinn}
C {ipin.sym} -20 -860 0 0 {name=p15 lab=vdda}
C {res.sym} 160 -810 0 0 {name=R1
value=1MEG
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 150 -770 0 0 {name=p1 sig_type=std_logic lab=vssa}
