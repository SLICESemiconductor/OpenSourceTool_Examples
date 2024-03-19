v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 2000 140 2800 540 {flags=graph
y1=-180
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
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
}
B 2 2000 580 2800 980 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0

y1=-40
color=21
node="\\"av db20()\\""
y2=100}
N 460 810 460 840 {
lab=GND}
N 460 720 460 750 {
lab=vssa}
N 900 680 900 860 {
lab=vssa}
N 620 720 620 770 {
lab=vinp}
N 1280 600 1340 600 {
lab=vout}
N 1460 640 1460 720 {
lab=vout}
N 1460 720 1460 760 {
lab=vout}
N 1220 660 1220 690 {
lab=vssa}
N 1220 510 1220 540 {
lab=vdda}
N 1340 600 1460 600 {
lab=vout}
N 1460 600 1460 640 {
lab=vout}
N 1120 600 1160 600 {
lab=vinp}
N 1120 620 1160 620 {
lab=xxx}
N 1060 460 1220 460 {
lab=vdda}
N 1220 460 1220 510 {
lab=vdda}
N 900 460 1060 460 {
lab=vdda}
N 900 860 1220 860 {
lab=vssa}
N 1220 690 1220 860 {
lab=vssa}
N 1220 860 1460 860 {
lab=vssa}
N 1460 830 1460 860 {
lab=vssa}
N 1460 820 1460 830 {
lab=vssa}
N 900 460 900 620 {
lab=vdda}
N 620 600 1120 600 {
lab=vinp}
N 620 600 620 660 {
lab=vinp}
N 620 830 620 860 {
lab=vssa}
N 620 860 900 860 {
lab=vssa}
N 620 660 620 720 {
lab=vinp}
N 1080 470 1080 500 {
lab=vdda}
N 1080 460 1080 470 {
lab=vdda}
N 1080 560 1080 580 {
lab=ibias}
N 1080 580 1160 580 {
lab=ibias}
N 1400 720 1460 720 {
lab=vout}
N 1080 720 1300 720 {
lab=xxx}
N 1080 620 1080 720 {
lab=xxx}
N 1080 620 1120 620 {
lab=xxx}
C {vsource.sym} 460 780 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {gnd.sym} 460 840 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 460 720 2 0 {name=p11 sig_type=std_logic lab=vssa}
C {vsource.sym} 900 650 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {vsource.sym} 620 800 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {OTA.sym} 1240 680 0 0 {name=xota
xschematic=OTA.sch
xschematic=OTA_ideal_order0_elmod.sch
xschematic=OTA_ideal_order0_vloga.sch
xschematic=OTA_ideal_order0_vloga_2.sch
schematic=OTA_ideal_order1_elmod.sch
xschematic=OTA_ideal_order1_vloga.sch
}
C {capa.sym} 1460 790 0 0 {name=C2
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1220 460 2 0 {name=p18 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 1460 600 2 0 {name=p21 sig_type=std_logic lab=vout
}
C {lab_pin.sym} 990 600 1 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 620 860 0 0 {name=p3 sig_type=std_logic lab=vssa}
C {loopgainprobe.sym} 1400 800 0 0 {name=xstb}
C {isource.sym} 1080 530 0 0 {name=Iisnk value=xibias}
C {code.sym} 1630 650 0 0 {name=stim_file 
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
  +  @m.xota2.m6vgs]
  +  @m.xota2.m6[vth]
  +  @m.xota2.m6[gds]
  +  @m.xota2.m6[gm]
  +  @m.xota2.m6[id]
  
  .control
  pre_osdi OTA_vcvs.osdi
  save all

  op
  write tb_ota_1stage_op.raw

** 2. AC ANALYSIS ** 

  alter i.xstb.Ii acmag=0 
  alter v.xstb.Vi acmag=1 
    
  ac dec 10 1 100G
  remzerovec
  write tb_OTA_1stage_ac1.raw
  
  alter i.xstb.Ii acmag=1 
  alter v.xstb.Vi acmag=0 
  
  ac dec 10 1 10G  
  
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
  
  ** 3. MEASURES **
  
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
C {launcher.sym} 1680 840 0 0 {name=h1
descr=Backannotate
tclcommand="xschem annotate_op $\{netlist_dir\}/tb_ota_1stage_op.raw"
}
C {lab_pin.sym} 1080 580 0 0 {name=p2 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 1080 620 0 0 {name=p4 sig_type=std_logic lab=xxx}
