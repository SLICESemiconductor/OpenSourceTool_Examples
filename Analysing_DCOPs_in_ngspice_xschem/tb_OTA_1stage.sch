v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1900 20 2700 420 {flags=graph
y1=-180
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=4.9999999e-06
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="ph(av)
\\" -45\\"
\\" -90\\"
\\" -180\\""
color="4 7 12 21"
dataset=-1
unitx=1
logx=1
logy=0
x1=-2.9568434e-14
rawfile=$netlist_dir/tb_OTA_1stage_ac2.raw}
B 2 1900 460 2700 860 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1

x2=4.9999999e-06
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0

y1=-180
color=21
node="\\"av db20()\\""
y2=90
x1=-2.9568434e-14
rawfile=$netlist_dir/tb_OTA_1stage_ac2.raw}
B 2 980 -300 1780 100 {flags=graph
y1=0.98
y2=1.82
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.9568434e-14
x2=4.9999999e-06
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
T {tcleval([xschem raw info])} 700 670 0 0 0.4 0.4 {floater=true layer=16}
T {Use to switch to the required raw file / raw file section} 690 820 0 0 0.4 0.4 {}
T {Displays relevant raw files} 700 630 0 0 0.4 0.4 {}
T {ctrl + left click to back annotate DCOPs} 1400 820 0 0 0.4 0.4 {}
N 500 530 500 560 {
lab=GND}
N 500 440 500 470 {
lab=vssa}
N 940 400 940 580 {
lab=vssa}
N 660 440 660 490 {
lab=#net1}
N 1320 320 1380 320 {
lab=vout}
N 1500 360 1500 440 {
lab=vout}
N 1500 440 1500 480 {
lab=vout}
N 1260 380 1260 410 {
lab=vssa}
N 1260 230 1260 260 {
lab=vdda}
N 1380 320 1500 320 {
lab=vout}
N 1500 320 1500 360 {
lab=vout}
N 1160 320 1200 320 {
lab=vinp}
N 1160 340 1200 340 {
lab=vfb}
N 1100 180 1260 180 {
lab=vdda}
N 1260 180 1260 230 {
lab=vdda}
N 940 180 1100 180 {
lab=vdda}
N 940 580 1260 580 {
lab=vssa}
N 1260 410 1260 580 {
lab=vssa}
N 1260 580 1500 580 {
lab=vssa}
N 1500 550 1500 580 {
lab=vssa}
N 1500 540 1500 550 {
lab=vssa}
N 940 180 940 340 {
lab=vdda}
N 660 320 1160 320 {
lab=vinp}
N 660 320 660 380 {
lab=vinp}
N 660 550 660 580 {
lab=vssa}
N 660 580 940 580 {
lab=vssa}
N 1120 190 1120 220 {
lab=vdda}
N 1120 180 1120 190 {
lab=vdda}
N 1120 280 1120 300 {
lab=ibias}
N 1120 300 1200 300 {
lab=ibias}
N 1440 440 1500 440 {
lab=vout}
N 1120 440 1340 440 {
lab=vfb}
N 1120 340 1120 440 {
lab=vfb}
N 1120 340 1160 340 {
lab=vfb}
C {vsource.sym} 500 500 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {gnd.sym} 500 560 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 500 440 2 0 {name=p11 sig_type=std_logic lab=vssa}
C {vsource.sym} 940 370 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {vsource.sym} 660 520 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {OTA.sym} 1280 400 0 0 {name=xota
xschematic=OTA.sch
schematic=OTA_DCOP.sch
xschematic=OTA_ideal_order0_elmod.sch
xschematic=OTA_ideal_order0_vloga.sch
xschematic=OTA_ideal_order0_vloga_2.sch
xschematic=OTA_ideal_order1_elmod.sch
xschematic=OTA_ideal_order1_vloga.sch
}
C {capa.sym} 1500 510 0 0 {name=C2
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1260 180 2 0 {name=p18 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 1500 320 2 0 {name=p21 sig_type=std_logic lab=vout
}
C {lab_pin.sym} 1030 320 1 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 660 580 0 0 {name=p3 sig_type=std_logic lab=vssa}
C {loopgainprobe.sym} 1440 520 0 0 {name=xstb}
C {isource.sym} 1120 250 0 0 {name=Iisnk value=xibias}
C {code.sym} 1670 370 0 0 {name=stim_file 
only_toplevel=false 
spice_ignore=false
value="* Models
* Note: I name my nmos models as nmos and pmos ones as pmosx (just messing a bit)
.model nmos nmos level=54 version=4.8.2 
.model pmosx pmos level=54 version=4.8.2

* Parameters
.param xvdda = 1.8
.param xvinp = 1
.param xibias = 2u
.param xCload = 0p
.param xgm_dp = 1e-3
.param xRin = 1/xgm_dp
.param xCout = 1p
.param xRout = 1e6
.param xtrf = 50p
.param xtsim = 5u
.param xstep_en = 1

.model OTA_vcvs OTA_vcvs
* vlogA instantiation

  
  ** 1. DCOP analysis **
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  .save
  +  @m.xota.m1[vgs]
  +  @m.xota.m1[vth]
  +  @m.xota.m1[gds]
  +  @m.xota.m1[gm]
  +  @m.xota.m1[id]
  +  @m.xota2.m1[vgs]
  +  @m.xota2.m1[vth]
  +  @m.xota2.m1[gds]
  +  @m.xota2.m1[gm]
  +  @m.xota2.m1[id]
  
  +  @m.xota.m2[vgs]
  +  @m.xota.m2[vth]
  +  @m.xota.m2[gds]
  +  @m.xota.m2[gm]
  +  @m.xota.m2[id]
  +  @m.xota2.m2[vgs]
  +  @m.xota2.m2[vth]
  +  @m.xota2.m2[gds]
  +  @m.xota2.m2[gm]
  +  @m.xota2.m2[id]
  
  +  @m.xota.m3[vgs]
  +  @m.xota.m3[vth]
  +  @m.xota.m3[gds]
  +  @m.xota.m3[gm]
  +  @m.xota.m3[id]
  +  @m.xota2.m3[vgs]
  +  @m.xota2.m3[vth]
  +  @m.xota2.m3[gds]
  +  @m.xota2.m3[gm]
  +  @m.xota2.m3[id]
  
  +  @m.xota.m4[vgs]
  +  @m.xota.m4[vth]
  +  @m.xota.m4[gds]
  +  @m.xota.m4[gm]
  +  @m.xota.m4[id]
  +  @m.xota2.m4[vgs]
  +  @m.xota2.m4[vth]
  +  @m.xota2.m4[gds]
  +  @m.xota2.m4[gm]
  +  @m.xota2.m4[id]

  +  @m.xota.m5[vgs]
  +  @m.xota.m5[vth]
  +  @m.xota.m5[gds]
  +  @m.xota.m5[gm]
  +  @m.xota.m5[id]
  +  @m.xota2.m5[vgs]
  +  @m.xota2.m5[vth]
  +  @m.xota2.m5[gds]
  +  @m.xota2.m5[gm]
  +  @m.xota2.m5[id]
  
  +  @m.xota.m6[vgs]
  +  @m.xota.m6[vth]
  +  @m.xota.m6[gds]
  +  @m.xota.m6[gm]
  +  @m.xota.m6[id]
  +  @m.xota.m6[vdsat]
  +  @m.xota2.m6vgs]
  +  @m.xota2.m6[vth]
  +  @m.xota2.m6[gds]
  +  @m.xota2.m6[gm]
  +  @m.xota2.m6[id]
  
  .control
  let xtsim = 5u
  pre_osdi OTA_vcvs.osdi
  save all

  op
  write tb_ota_1stage_op.raw

** 2. TRAN ANALYSIS ** 

  remzerovec
  set appendwrite
  tran 1n $&xtsim
  write tb_ota_1stage_op.raw
  *write tb_ota_1stage_tran.raw
 * plot v(vout) v(vinp) v(vdda)
 unset appendwrite 
 
** 3. AC ANALYSIS ** 

  alter i.xstb.Ii acmag=0 
  alter v.xstb.Vi acmag=1 
    
  ac dec 10 1 100G
  remzerovec
  
*  unset appendwrite 
    
  write tb_OTA_1stage_ac1.raw
  
  alter i.xstb.Ii acmag=1 
  alter v.xstb.Vi acmag=0 
  
  ac dec 10 1 100G  
  
  * use this line if you want the phase response to start at 180deg 
  *let av = \{1/(1-1/(2*(ac1.i(v.xstb.Vi)*ac2.v(xstb.x)-ac1.v(xstb.x)*ac2.i(v.xstb.Vi))+ac1.v(xstb.x)+ac2.i(v.xstb.Vi)))\}

  * use this line if you want the phase response to start at 0deg (more conventional and directly corresponds to Franks derivation)
  let av = \{1/(1/(2*(ac1.i(v.xstb.Vi)*ac2.v(xstb.x)-ac1.v(xstb.x)*ac2.i(v.xstb.Vi))+ac1.v(xstb.x)+ac2.i(v.xstb.Vi))-1)\}

  remzerovec
  write tb_OTA_1stage_ac2.raw
 
  *ngspice plots
  *plot vdb(av) xlog
  *plot \{(180/pi)*vp(av)\} xlog 
  *plot 180*cph(av)/pi
  
  ** 4. MEASURES **
  
  let n45_rads = -45*(pi/180) 
  meas AC Av_0 FIND vdb(av) AT=10
  echo --
  meas AC BW WHEN vp(av)=n45_rads CROSS=1
  echo --
  meas AC Av_BW FIND vdb(av) WHEN vp(av)=n45_rads CROSS=1
  echo --
  meas AC ULGF WHEN vdb(av)=0
  echo --
  meas AC ULGF_phi_rads FIND vp(av) WHEN vdb(av)=0 CROSS=1
  let ULGF_phi_deg = ULGF_phi_rads*(180/pi)
  print ULGF_phi_deg
  let PM = 180+ULGF_phi_deg
  print PM
  echo --
  * putting in -170 since this is a 2nd-order system so doesnt ever achieve -180
  let n180_rads = -170*(pi/180)
  meas AC GM FIND vdb(av) WHEN vp(av)=n180_rads CROSS=1

  setplot

.endc
"}
C {lab_pin.sym} 1120 300 0 0 {name=p2 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 1120 350 0 0 {name=p4 sig_type=std_logic lab=vfb}
C {vsource.sym} 660 410 0 0 {name=Vstep value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xstep_en*800m\})"
format="@name @pinlist @value"

}
C {launcher.sym} 1460 800 0 0 {name=h1
descr=Backannotate
tclcommand="xschem annotate_op $\{netlist_dir\}/tb_ota_1stage_op.raw"
}
C {launcher.sym} 755 795 0 0 {name=h5 
descr="Switch rawfile" 
tclcommand="
xschem raw switch; xschem redraw"

}
