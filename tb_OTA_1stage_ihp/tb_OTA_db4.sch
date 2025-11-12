v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1300 -340 2100 60 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=10.329445
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_OTA_1stage_ac2.raw
color="11 7 10 12 4 10 8 21 13 17"
node="\\" -45\\"
\\" -90\\"
\\" -180\\"

SCH; ph(av) %0 $netlist_dir/tb_OTA_1stage_ac2_sch.raw
PEX_RC; ph(av) %0 $netlist_dir/tb_OTA_1stage_ac2_pex_rc.raw
PEX_C; ph(av) %0 $netlist_dir/tb_OTA_1stage_ac2_pex_c.raw
PEX_R; ph(av) %0 $netlist_dir/tb_OTA_1stage_ac2_pex_r.raw
PEX_FE; ph(av) %0 $netlist_dir/tb_OTA_1stage_ac2_pex_fe.raw
PEX_RC_nvdda_nvssa; ph(av) x%0 $netlist_dir/tb_OTA_1stage_ac2_pex_rc_nvdda_nvssa.raw
PEX_R_nvdda_nvssa; ph(av) x%0 $netlist_dir/tb_OTA_1stage_ac2_pex_r_nvdda_nvssa.raw"
y1=-217.22606
y2=70.77394
autoload=1
x1=3.571045
sim_type=ac
linewidth_mult=2}
B 2 1300 -760 2100 -360 {flags=graph,unlocked
y1=-18.642714
y2=26.797286
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-804.22515

divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_OTA_1stage_ac2.raw
autoload=1
x2=1009.0661
linewidth_mult=2
sim_type=ac
color="12 4 10 8 21 13 17"
node="SCH; av db20() %0 $netlist_dir/tb_OTA_1stage_ac2_sch.raw
PEX_RC; av db20() %0 $netlist_dir/tb_OTA_1stage_ac2_pex_rc.raw
PEX_C; av db20() %0 $netlist_dir/tb_OTA_1stage_ac2_pex_c.raw
PEX_R; av db20() %0 $netlist_dir/tb_OTA_1stage_ac2_pex_r.raw
PEX_FE; av db20() %0 $netlist_dir/tb_OTA_1stage_ac2_pex_fe.raw
PEX_RC_nvdda_nvssa; av db20() x%0 $netlist_dir/tb_OTA_1stage_ac2_pex_rc_nvdda_nvssa.raw
PEX_R_nvdda_nvssa; av db20() x%0 $netlist_dir/tb_OTA_1stage_ac2_pex_r_nvdda_nvssa.raw"
}
B 2 480 -340 1280 60 {flags=graph,unlocked
y1=1.8e-05
y2=4.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
linewidth_mult=4.0
color="8 10 4 12 21 17"
node="idp_lhs; i(@n.xota.xm8.nsg13_lv_nmos[ids])
itail; i(@n.xota.xm1.nsg13_lv_nmos[ids])
indio; i(@n.xota.xm2.nsg13_lv_nmos[ids])
idp_rhs; i(@n.xota.xm3.nsg13_lv_nmos[ids])
ids_pload_rhs; i(@n.xota.xm5.nsg13_lv_pmos[ids])
ids_pload_lhs; i(@n.xota.xm6.nsg13_lv_pmos[ids])"}
T {Transient Analysis} 680 -830 0 0 0.8 0.8 {}
T {AC Analysis} 1560 -830 0 0 0.8 0.8 {}
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
N -620 -200 -620 -180 {
lab=vinp}
N -620 -20 -620 20 {
lab=vssa}
N 180 0 180 20 {
lab=vssa}
N 180 -100 180 -60 {
lab=vout}
N -620 -120 -620 -80 {
lab=#net1}
N -720 -20 -720 0 {
lab=GND}
N -720 -120 -720 -80 {
lab=vssa}
N -80 -140 -80 20 {
lab=vssa}
N 80 -100 180 -100 {
lab=vout}
N -200 -100 -20 -100 {
lab=vfb}
N -80 20 180 20 {
lab=vssa}
N -200 -270 -200 -220 {lab=ibias}
N -80 -400 -80 -260 {lab=vdda}
N -280 20 -80 20 {
lab=vssa}
N -280 -120 -280 20 {lab=vssa}
N -500 20 -280 20 {
lab=vssa}
N -620 20 -500 20 {
lab=vssa}
N -360 -400 -280 -400 {lab=vdda}
N -500 -180 -440 -180 {lab=vssa}
N -400 -200 -400 -180 {lab=vinp}
N -380 -400 -380 -180 {lab=vdda}
N -360 -400 -360 -180 {lab=vdda}
N -380 -400 -360 -400 {lab=vdda}
N -500 -180 -500 20 {lab=vssa}
N -400 -200 -140 -200 {lab=vinp}
N -620 -200 -400 -200 {lab=vinp}
N -420 -220 -420 -180 {
lab=vssa}
C {devices/vsource.sym} -280 -150 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/isource.sym} -200 -300 0 0 {name=Iisnk value=xibias}
C {devices/capa.sym} 180 -30 0 0 {name=C2
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {OTA.sym} -80 -160 0 0 {name=xota
xschematic=OTA.sch
xschematic=OTA_DCOP.sch
xschematic=OTA_ideal_order0_vloga.sch

schematic=OTA_final
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC.spice)"

xschematic=OTA_final
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_C.spice)"

xschematic=OTA_final
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_R.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_R.spice)"

xschematic=OTA_final
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_FE.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_FE.spice)"

xschematic=OTA_final
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC_no_vdda_vssa.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC_no_vdda_vssa.spice)"

xschematic=OTA_final
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_R_no_vdda_vssa.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_R_no_vdda_vssa.spice)"
}
C {devices/vsource.sym} -620 -150 0 0 {name=Vstep value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xstep_en*10m\})"
format="@name @pinlist @value"}
C {devices/vsource.sym} -620 -50 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {devices/vsource.sym} -720 -50 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -720 0 0 0 {name=l1 lab=GND}
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
C {devices/lab_wire.sym} -720 -100 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -580 20 0 1 {name=p7 sig_type=std_logic lab=vssa

}
C {devices/loopgainprobe.sym} 80 -20 0 0 {name=xstb}
C {devices/code.sym} 200 -620 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
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
C {noconn.sym} -360 -40 3 0 {name=l2}
C {sg13g2_IOPadAnalog.sym} -280 -200 1 0 {name=xesd
xschematic=sg13g2_IOPadAnalog.sch
xschematic=sg13g2_IOPadAnalog_shrt.sch

schematic=sg13g2_IOPadAnalog.sch
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"}
C {devices/lab_wire.sym} -420 -220 3 1 {name=p8 sig_type=std_logic lab=vssa

}
