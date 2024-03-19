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
N 0 -680 40 -680 {
lab=vinn}
N 80 -620 220 -620 {
lab=vssa}
N 220 -660 220 -620 {
lab=vssa}
N 80 -760 80 -730 {
lab=#net1}
N 220 -760 220 -720 {
lab=#net2}
N 180 -760 220 -760 {
lab=#net2}
N 80 -760 120 -760 {
lab=#net1}
N 240 -980 340 -980 {
lab=vdda}
N 220 -620 340 -620 {
lab=vssa}
N 340 -660 340 -620 {
lab=vssa}
N 340 -780 340 -720 {
lab=vout}
N 340 -760 440 -760 {
lab=vout}
N 440 -760 440 -720 {
lab=vout}
N 340 -620 440 -620 {
lab=vssa}
N 440 -660 440 -620 {
lab=vssa}
N 440 -760 500 -760 {
lab=vout}
N 340 -980 340 -960 {
lab=vdda}
N 340 -900 340 -860 {
lab=#net3}
N 340 -800 340 -780 {
lab=vout}
N 180 -850 180 -840 {
lab=vssa}
N 170 -840 180 -840 {
lab=vssa}
N 0 -910 180 -910 {
lab=#net4}
C {vcvs.sym} 80 -700 0 0 {name=E1 value=1}
C {ipin.sym} 0 -620 0 0 {name=p10 lab=vssa}
C {ipin.sym} 0 -720 0 0 {name=p11 lab=vinp}
C {ipin.sym} 0 -910 0 0 {name=p13 lab=ibias_1u}
C {ipin.sym} 0 -680 0 0 {name=p14 lab=vinn}
C {ipin.sym} 240 -980 0 0 {name=p15 lab=vdda}
C {opin.sym} 500 -760 0 0 {name=p1 lab=vout}
C {res.sym} 220 -690 0 0 {name=R1
value=\{xRin\}
footprint=1206
device=resistor
m=1}
C {cccs.sym} 340 -930 0 0 {name=F1 vnam=Vidp value=1}
C {vsource.sym} 150 -760 3 0 {name=Vidp value=0
format="@name @pinlist @value"}
C {res.sym} 340 -690 0 0 {name=R2
value=\{xRout\}
footprint=1206
device=resistor
m=1}
C {capa.sym} 440 -690 0 0 {name=C2
m=1
value=\{xCout\}
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 340 -830 0 0 {name=Viout value=0
format="@name @pinlist @value"}
C {res.sym} 180 -880 0 0 {name=R3
value=1MEG
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 170 -840 0 0 {name=p2 sig_type=std_logic lab=vssa}
