v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Testbench} -270 -610 0 0 0.8 0.8 {}
N -20 -200 180 -200 {
lab=vout}
N 180 -200 180 -100 {
lab=vout}
N -200 -180 -200 -100 {
lab=vfb}
N -200 -180 -140 -180 {
lab=vfb}
N -200 -220 -140 -220 {
lab=ibias}
N -200 -400 -200 -330 {
lab=vdda}
N -200 -400 -80 -400 {
lab=vdda}
N -280 -400 -280 -180 {
lab=vdda}
N -280 -400 -200 -400 {
lab=vdda}
N -420 -200 -140 -200 {
lab=vinp}
N -420 -200 -420 -180 {
lab=vinp}
N -420 -20 -420 20 {
lab=vssa}
N -80 20 180 20 {
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
N 80 -100 180 -100 {
lab=vout}
N -200 -100 -20 -100 {
lab=vfb}
N -420 20 -280 20 {
lab=vssa}
N -280 20 -80 20 {
lab=vssa}
N -80 -400 -80 -260 {lab=vdda}
N -200 -270 -200 -220 {lab=ibias}
C {devices/vsource.sym} -280 -150 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/isource.sym} -200 -300 0 0 {name=Iisnk value=xibias}
C {devices/capa.sym} 180 -30 0 0 {name=C2
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {OTA.sym} -80 -160 0 0 {name=xota
schematic=OTA.sch
xschematic=OTA_DCOP.sch
xschematic=OTA_ideal_order0_vloga.sch

}
C {devices/vsource.sym} -420 -150 0 0 {name=Vstep value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xstep_en*10m\})"
format="@name @pinlist @value"}
C {devices/vsource.sym} -420 -50 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {devices/vsource.sym} -500 -50 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -500 0 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -190 -220 0 1 {name=p3 sig_type=std_logic lab=ibias

}
C {devices/lab_wire.sym} -110 -400 0 1 {name=p1 sig_type=std_logic lab=vdda

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
C {devices/loopgainprobe.sym} 80 -20 0 0 {name=xstb}
C {devices/code.sym} 300 -210 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
*.model /home/slice/Desktop/acm2/MOSFET_model/Verilog-A/NMOS_ACM_2V0.va
*.model /home/slice/Desktop/acm2/MOSFET_model/Verilog-A/PMOS_ACM_2V0.va

* Parameters
.param xvdda = 1.8
.param xvinp = 1
.param xibias = 40u
.param xCload = 0p
.param xgm_dp = 1e-3
.param xRin = 1/xgm_dp
.param xCout = 1p
.param xRout = 1e6
.param xtrf = 50p
.param xtsim = 5u
.param xstep_en = 1

* vlogA instantiation
.model OTA_vcvs OTA_vcvs
  
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  
  .include tb_OTA.save
  .save v(vout) v(vinp) v(vfb) v(vdda) v(xota.pdio) v(xota.vtail) 
  .save i(v.xota.Virhs) i(v.xota.Vitail) i(xota.vdda) i(v.Vdda)
  .save i(@n.xota.xm6.nsg13_lv_pmos[ids])
    
  
  .control
  let xtsim = 5u
  pre_osdi OTA_vcvs.osdi
  save all

** 1. DCOP ANALYSIS ** 

  op
 * set filetype=ascii
  remzerovec
  write tb_OTA_op.raw

** 2. TRAN ANALYSIS ** 

  tran 1n $&xtsim
  *set filetype=ascii
  remzerovec
  write tb_OTA_tran.raw

** 3. AC ANALYSIS ** 

  alter i.xstb.Ii acmag=0 
  alter v.xstb.Vi acmag=1 
    
  ac dec 10 1 100G
  
  remzerovec 
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
*quit 0
.endc


"}
C {launcher.sym} 270 -430 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_OTA_tran.raw tran"
}
