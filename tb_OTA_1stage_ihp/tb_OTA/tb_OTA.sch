v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -420 -790 380 -390 {flags=graph
y1=0.98798738
y2=1.0133975
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.2706298e-06
x2=2.8874036e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vinp"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N -20 -200 180 -200 {
lab=vout}
N 180 -200 180 -100 {
lab=vout}
N 120 -100 180 -100 {
lab=vout}
N -200 -100 20 -100 {
lab=vfb}
N -200 -180 -200 -100 {
lab=vfb}
N -200 -180 -140 -180 {
lab=vfb}
N -200 -240 -200 -220 {
lab=ibias}
N -200 -220 -140 -220 {
lab=ibias}
N -200 -320 -200 -300 {
lab=vdda}
N -200 -320 -80 -320 {
lab=vdda}
N -80 -320 -80 -260 {
lab=vdda}
N -280 -320 -280 -180 {
lab=vdda}
N -280 -320 -200 -320 {
lab=vdda}
N -420 -200 -140 -200 {
lab=vinp}
N -420 -200 -420 -180 {
lab=vinp}
N -420 -20 -420 20 {
lab=vssa}
N -420 20 180 20 {
lab=vssa}
N 180 0 180 20 {
lab=vssa}
N 180 -100 180 -60 {
lab=vout}
N -420 -120 -420 -80 {
lab=#net1}
N -280 -120 -280 20 {
lab=vssa}
N -500 -20 -500 -0 {
lab=GND}
N -500 -120 -500 -80 {
lab=vssa}
N -80 -140 -80 20 {
lab=vssa}
C {devices/vsource.sym} -280 -150 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/isource.sym} -200 -270 0 0 {name=Iisnk value=xibias}
C {devices/capa.sym} 180 -30 0 0 {name=C2
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} 280 -190 0 0 {name=stimulus only_toplevel=false value="** opencircuitdesign pdks install


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
C {OTA.sym} -80 -160 0 0 {name=xota
xschematic=OTA.sch
schematic=OTA_DCOP.sch}
C {devices/vsource.sym} -420 -150 0 0 {name=Vstep value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xstep_en*10m\})"
format="@name @pinlist @value"}
C {devices/vsource.sym} -420 -50 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {devices/vsource.sym} -500 -50 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -500 0 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -190 -220 0 1 {name=p3 sig_type=std_logic lab=ibias

}
C {devices/lab_wire.sym} -80 -320 0 1 {name=p1 sig_type=std_logic lab=vdda

}
C {devices/lab_wire.sym} 180 -200 0 1 {name=p2 sig_type=std_logic lab=vout

}
C {devices/lab_wire.sym} -240 -200 0 1 {name=p4 sig_type=std_logic lab=vinp

}
C {devices/lab_wire.sym} -180 -100 0 1 {name=p5 sig_type=std_logic lab=vfb

}
C {devices/lab_wire.sym} -500 -100 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -380 20 0 1 {name=p7 sig_type=std_logic lab=vssa

}
C {loopgainprobe.sym} 120 -20 0 0 {name=x1}
C {devices/code.sym} 430 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.lib $::SKYWATER_MODELS/sky130.lib.spice ff
"
spice_ignore=false}
