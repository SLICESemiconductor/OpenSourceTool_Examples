v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 700 -800 1500 -400 {flags=graph,unlocked
y1=0.99847631

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
node="xvinp

SCH; vout %0 $netlist_dir/tb_OTA_tran.raw"
color="10 12"
dataset=-1
unitx=1
logx=0
logy=0
y2=1.0312443
rawfile=$netlist_dir/tb_ota_1stage_tran.raw
sim_type=tran
autoload=1
linewidth_mult=2}
B 2 1520 -380 2320 20 {flags=graph,unlocked


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
color="11 7 10 12"
node="\\" -45\\"
\\" -90\\"
\\" -180\\"

SCH; ph(av) %0 $netlist_dir/tb_OTA_1stage_ac2_nesd.raw"
y1=-217.22606
y2=70.77394
autoload=1
x1=3.571045
sim_type=ac
linewidth_mult=2}
B 2 1520 -800 2320 -400 {flags=graph,unlocked
y1=-5.4
y2=26
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0

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
x2=11
linewidth_mult=2
sim_type=ac
color=12
node="SCH; av db20() %0 $netlist_dir/tb_OTA_1stage_ac2_nesd.raw"
}
B 2 700 -380 1500 20 {flags=graph,unlocked
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
T {Transient Analysis} 900 -870 0 0 0.8 0.8 {}
T {AC Analysis} 1780 -870 0 0 0.8 0.8 {}
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
N -1120 -20 -1120 0 {
lab=GND}
N -1120 -120 -1120 -80 {
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
N -350 -200 -140 -200 {lab=vinp}
N -490 -400 -280 -400 {lab=vdda}
N -490 -400 -490 -220 {lab=vdda}
N -620 -200 -490 -200 {lab=vinp}
N -490 20 -280 20 {
lab=vssa}
N -780 20 -620 20 {lab=vssa}
N -780 -400 -490 -400 {lab=vdda}
N -780 -400 -780 -280 {lab=vdda}
N -820 -400 -820 -280 {lab=vdda}
N -780 -120 -780 20 {lab=vssa}
N -820 -400 -780 -400 {lab=vdda}
N -820 20 -780 20 {lab=vssa}
N -960 -120 -960 20 {lab=vssa}
N -960 -400 -820 -400 {lab=vdda}
N -960 -400 -960 -280 {lab=vdda}
N -1000 -400 -1000 -280 {lab=vdda}
N -1000 -400 -960 -400 {lab=vdda}
N -490 -160 -490 20 {lab=vssa}
N -620 20 -490 20 {
lab=vssa}
N 180 -200 280 -200 {lab=vout}
N -80 -400 280 -400 {lab=vdda}
N 280 -400 280 -220 {lab=vdda}
N 180 20 280 20 {lab=vssa}
N 280 -160 280 20 {lab=vssa}
N 420 -200 480 -200 {lab=vout}
N 280 20 480 20 {lab=vssa}
N 480 -200 480 -120 {lab=vout}
N 480 -60 480 20 {lab=vssa}
N -820 -120 -820 20 {lab=vssa}
N -960 20 -820 20 {lab=vssa}
C {devices/vsource.sym} -280 -150 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/isource.sym} -200 -300 0 0 {name=Iisnk value=xibias}
C {OTA.sym} -80 -160 0 0 {name=xota
xschematic=OTA.sch
xschematic=OTA_DCOP.sch
xschematic=OTA_ideal_order0_vloga.sch

xschematic=OTA_final
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC.spice)"

schematic=OTA_final
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_C.spice)"

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
C {devices/vsource.sym} -1120 -50 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -1120 0 0 0 {name=l1 lab=GND}
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
C {devices/lab_wire.sym} -1120 -100 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -580 20 0 1 {name=p7 sig_type=std_logic lab=vssa

}
C {devices/loopgainprobe.sym} 80 -20 0 0 {name=xstb}
C {devices/code.sym} 360 -760 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
*.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/sg13g2_moshv_mod.lib 
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
.include /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/diodes.lib
*.lib /home/slice/xschem/tb_OTA_1stage_ihp/cornerRES.lib res_typ
*.lib /home/slice/xschem/tb_OTA_1stage_ihp/resistors_mod.lib

*.model /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/sg13g2_moshv_mod.lib/sg13_hv_pmos

*.model /home/slice/Desktop/acm2/MOSFET_model/Verilog-A/NMOS_ACM_2V0.va
*.model /home/slice/Desktop/acm2/MOSFET_model/Verilog-A/PMOS_ACM_2V0.va

* Parameters
.param xvdda = 1.8
.param xvinp = 1
.param xibias = 40u
.param xCload = 0p
.param xCpad = 100f
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
  .save v(vout) v(vinp) v(vfb) v(vdda) v(xota.pdio) v(xota.vtail) v(vout_pad)
  .save i(v.xota.Virhs) i(v.xota.Vitail) i(xota.vdda) i(v.Vdda)
  .save i(@n.xota.xm6.nsg13_lv_pmos[ids])
    
  
  .control
  let xtsim = 0.1u
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
C {launcher.sym} 430 -580 0 0 {name=h5
descr="load waves" 
xtclcommand="xschem raw_read $netlist_dir/tb_OTA_tran.raw tran"
tclcommand="xschem raw_read $netlist_dir/tb_OTA_tran.raw tran 0u 3u"
}
C {sg13g2_IOPadVdd.sym} -1040 -200 0 0 {name=xclamp
xschematic=sg13g2_IOPadVdd.sch
xschematic=sg13g2_IOPadVdd_shrt.sch

xschematic=sg13g2_IOPadVdd_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_RC.spice)"

schematic=sg13g2_IOPadVdd_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_C.spice)"
}
C {sg13g2_IOPadVss.sym} -1000 -180 0 0 {name=xiopadvss
xschematic=sg13g2_IOPadVss.sch
xschematic=sg13g2_IOPadVss_shrt.sch

xschematic=sg13g2_IOPadVss_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_RC.spice)"

schematic=sg13g2_IOPadVss_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_C.spice)"}
C {noconn.sym} -350 -240 2 0 {name=l4}
C {sg13g2_IOPadAnalog.sym} -510 -320 0 0 {name=xesd_ip
xschematic=sg13g2_IOPadAnalog.sch
xschematic=sg13g2_IOPadAnalog_shrt.sch

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"

xschematic=sg13g2_IOPadAnalog_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_C_v3.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_C_v3.spice)"

schematic=sg13g2_IOPadAnalog_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_R.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_R.spice)"

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_FE.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_FE.spice)"}
C {devices/capa.sym} 180 -30 0 0 {name=C1
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {sg13g2_IOPadAnalog.sym} 260 -320 0 0 {name=xesd_op
xschematic=sg13g2_IOPadAnalog.sch
xschematic=sg13g2_IOPadAnalog_shrt.sch

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"

xschematic=sg13g2_IOPadAnalog_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_C_v3.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_C_v3.spice)"

schematic=sg13g2_IOPadAnalog_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_R.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_R.spice)"

xschematic=sg13g2_IOPadAnalog_pex.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_FE.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_FE.spice)"}
C {devices/capa.sym} 480 -90 0 0 {name=C2
m=1
value=\{xCpad\}
footprint=1206
device="ceramic capacitor"}
C {noconn.sym} 420 -240 2 0 {name=l2}
