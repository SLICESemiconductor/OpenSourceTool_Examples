v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 360 -280 1160 120 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.00761
x2=12.8163
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
y2=0.8m
y1=0
color=4
node="\\"vnoise_op_int; onoise_spectrum onoise_spectrum * integ() sqrt()\\""}
B 2 360 140 1160 540 {flags=graph
y1=0
y2=5n
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.00761
x2=12.8163
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=onoise_spectrum
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1200 -280 2000 120 {flags=graph,unlocked
y1=497m

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5u
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vout_noisy"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=tran_noise_tran1.raw
y2=503m
hilight_wave=2}
B 2 1200 140 2000 540 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vload
vout"
color="4 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=tran_noise_tran1.raw
sim_type=tran}
N -120 30 -120 60 {
lab=GND}
N -120 -60 -120 -30 {
lab=vssa}
N -40 -40 -40 80 {
lab=vssa}
N -40 80 120 80 {
lab=vssa}
N -40 -160 -40 -100 {
lab=vdda}
N -40 -160 120 -160 {
lab=vdda}
N 120 -160 120 -140 {
lab=vdda}
N 120 -80 120 -40 {
lab=vout}
N 120 20 120 80 {
lab=vssa}
N 120 250 120 280 {
lab=vload}
N 120 350 120 380 {
lab=vload}
N 120 280 120 290 {
lab=vload}
N 120 290 120 350 {
lab=vload}
N 120 440 120 460 {
lab=vssa}
N -20 460 120 460 {
lab=vssa}
N 120 220 140 220 {
lab=vdda}
N 120 160 120 190 {
lab=vdda}
N -20 160 -20 190 {
lab=vdda}
N 20 220 80 220 {
lab=vgate}
N -20 280 40 280 {
lab=vgate}
N 40 220 40 280 {
lab=vgate}
N -40 220 -20 220 {
lab=vdda}
N -20 160 120 160 {
lab=vdda}
N -20 250 -20 340 {
lab=vgate}
N -20 400 -20 460 {
lab=vssa}
N 120 -60 200 -60 {
lab=vout}
N 260 -60 300 -60 {
lab=vout_noisy}
C {vsource.sym} -120 0 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {gnd.sym} -120 60 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -120 -60 2 0 {name=p6 sig_type=std_logic lab=vssa}
C {vsource.sym} -40 -70 0 0 {name=Vvdda value="xvdda ac 1 TRNOISE (0m 0.05u 1.5 0m)"
format="@name @pinlist @value"}
C {lab_pin.sym} -40 80 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {res.sym} 120 -10 0 0 {name="R1"
value="\{xRes\} noisy=1"
footprint="1206"
device="resistor"
m="1"
}
C {res.sym} 120 -110 0 0 {name=R2
value="\{xRes\} noisy=1"
footprint="1206"
device="resistor"
m="1"
}
C {lab_pin.sym} 120 -70 2 0 {name=p2 sig_type=std_logic lab=vout}
C {code.sym} -20 -320 0 0 {name=stim_file only_toplevel=false value="* default BSIM models
.model nmosx nmos level=54 version=4.8.2
.model pmosx pmos level=54 version=4.8.2

* parameter definition
.param xvdda = 1
.param xRes = 1k

.control

destroy all
save all

* 1. Transient Analysis:
let xtsim = 5u;
      
   tran 1n $&xtsim
   remzerovec
   write tran_noise_tran1.raw
   
* 2. Noise Analysis:


let xfmax = 100G;

* Perform noise analysis on resistor divider
noise v(vout) Vvdda dec 10 1 $&xfmax 1

* Perform noise analysis on current mirror into resistor load
*noise v(vload) Vvdda dec 10 1 $&xfmax 1

* plot total integrted noise up to xfmax
print v(onoise_total)

* save integrated noise data
remzerovec
write tran_noise_integrated.raw

* save noise density data
setplot noise1
remzerovec
write tran_noise_density.raw

* ngspice plots (optional)
* plot noise density
* plot onoise_spectrum

* calculate total integrated noise to see if it matches v(onoise_total)
* this is only plotted in ngspice as shown on line 55
let vnoise_op_int = sqrt(integ(onoise_spectrum*onoise_spectrum))
*echo $&vnoise_op_int

* ngspice plots (optional)
* plot integrated noise
* plot vnoise_op_int xlog

* save integrated noise data in ascii format for awk script post-processing
* !Important: Set back to integrated noise data contained in noise2!
setplot noise2
set filetype=ascii
remzerovec
write tran_noise_integrated_ascii.raw

setplot
.endc

"}
C {lab_pin.sym} -40 -160 0 0 {name=p5 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 120 270 2 0 {name=p9 sig_type=std_logic lab=vload}
C {lab_pin.sym} -20 460 0 0 {name=p10 sig_type=std_logic lab=vssa}
C {lab_pin.sym} 140 220 2 0 {name=p12 sig_type=std_logic lab=vdda}
C {pmos4.sym} 100 220 0 0 {name=M2 model=pmosx w=2u l=1u del=0 m=2}
C {lab_pin.sym} 40 280 3 0 {name=p13 sig_type=std_logic lab=vgate}
C {pmos4.sym} 0 220 2 0 {name=M4 model=pmosx w=2u l=1u del=0 m=2}
C {isource.sym} -20 370 0 0 {name=I1 value=1u}
C {lab_pin.sym} -40 220 0 0 {name=p14 sig_type=std_logic lab=vdda}
C {lab_pin.sym} -20 160 0 0 {name=p3 sig_type=std_logic lab=vdda}
C {res.sym} 120 410 0 0 {name=R3
value="\{xRes\} noisy=1"
footprint="1206"
device="resistor"
m="1"
}
C {lab_pin.sym} 300 -60 1 0 {name=p4 sig_type=std_logic lab=vout_noisy}
C {vsource.sym} 230 -60 1 0 {name=Vvdda2 value="0 ac 1 TRNOISE (1m 0.05u 1.5 1m)"
format="@name @pinlist @value"}
