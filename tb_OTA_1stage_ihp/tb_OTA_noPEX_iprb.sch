v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 70 -380 870 20 {flags=graph
y1=-0.00078
y2=34
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
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1
color="4 4 7"
node="pad
i(vstep)
i(@r3[i])"}
T {Testbench} -760 -510 0 0 0.8 0.8 {}
N -620 -200 -620 -180 {
lab=pad}
N -620 -20 -620 20 {
lab=vssa}
N -620 -120 -620 -80 {
lab=#net1}
N -920 -30 -920 -10 {
lab=GND}
N -920 -130 -920 -90 {
lab=vssa}
N -490 -400 -490 -220 {lab=#net2}
N -620 -200 -490 -200 {lab=pad}
N -780 20 -620 20 {lab=vssa}
N -780 -400 -490 -400 {lab=#net2}
N -490 -160 -490 20 {lab=vssa}
N -780 -400 -780 -240 {lab=#net2}
N -780 -180 -780 20 {lab=vssa}
N -620 20 -490 20 {
lab=vssa}
N -240 -40 -200 -40 {
lab=vssa}
N -240 -340 -200 -340 {
lab=#net2}
N -240 -400 -240 -370 {lab=#net2}
N -280 -400 -240 -400 {lab=#net2}
N -280 -400 -280 -340 {lab=#net2}
N -240 -200 -240 -70 {lab=#net3}
N -200 -40 -200 20 {lab=vssa}
N -240 20 -200 20 {
lab=vssa}
N -240 -10 -240 20 {lab=vssa}
N -280 20 -240 20 {
lab=vssa}
N -280 -40 -280 20 {lab=vssa}
N -200 -400 -200 -340 {lab=#net2}
N -240 -400 -200 -400 {lab=#net2}
N -100 0 -100 20 {
lab=vssa}
N -200 20 -100 20 {
lab=vssa}
N -100 -200 -100 -60 {lab=#net3}
N -490 -400 -280 -400 {lab=#net2}
N -490 20 -280 20 {lab=vssa}
N -240 -200 -100 -200 {lab=#net3}
N -240 -310 -240 -200 {lab=#net3}
N -350 -200 -320 -200 {lab=pad}
N -260 -200 -240 -200 {lab=#net3}
C {devices/vsource.sym} -620 -150 0 0 {name=Vstep value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xstep_en*10\})"
format="@name @pinlist @value"
}
C {devices/vsource.sym} -620 -50 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {devices/vsource.sym} -920 -60 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -920 -10 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -920 -110 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/code.sym} 190 -570 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
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
.param xCload = 0.75p
.param xCpad = 100f
.param xgm_dp = 1e-3
.param xRin = 1/xgm_dp
.param xCout = 1p
.param xRout = 1e6
.param xtrf = 50p
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'
.param xstep_en = 1

* vlogA instantiation
.model OTA_vcvs OTA_vcvs

  
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  
  .include tb_OTA.save
  .save all
  .save v(vout) v(vinp) v(vfb) v(vdda) v(xota.pdio) v(xota.vtail) v(vout_pad)
  .save i(v.xota.Virhs) i(v.xota.Vitail) i(xota.vdda) i(v.Vdda) i(xesd_ip.pad) i(v.Vstep)
  .save i(@n.xota.xm6.nsg13_lv_pmos[ids])
    
  
  .control
  let xtsim = $&xtsim_var 
  pre_osdi OTA_vcvs.osdi
  save all

** 1. DCOP ANALYSIS ** 

  op
 * set filetype=ascii
  remzerovec
  write tb_OTA_op.raw

** 2. TRAN ANALYSIS ** 

  tran 1n $&xtsim
  echo --
  echo TSIM VALUE
    echo $&xtsim
    echo --
  *set filetype=ascii
  remzerovec
  write tb_OTA_tran.raw



  setplot
*quit 0
.endc


"}
C {noconn.sym} -350 -240 2 0 {name=l4}
C {sg13g2_IOPadAnalog.sym} -510 -320 0 0 {name=xesd_ip
schematic=sg13g2_IOPadAnalog.sch
xschematic=sg13g2_IOPadAnalog_shrt.sch

xschematic=sg13g2_IOPadAnalog_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"

xschematic=sg13g2_IOPadAnalog_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"

}
C {devices/vsource.sym} -780 -210 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -580 20 0 1 {name=p1 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -570 -200 0 1 {name=p2 sig_type=std_logic lab=pad

}
C {sg13g2_pr/sg13_lv_nmos.sym} -260 -40 0 0 {name=M10
l=0.13u
w=0.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -260 -340 0 0 {name=M36
l=0.13u
w=0.5u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/capa.sym} -100 -30 0 0 {name=C1
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} -290 -200 1 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
