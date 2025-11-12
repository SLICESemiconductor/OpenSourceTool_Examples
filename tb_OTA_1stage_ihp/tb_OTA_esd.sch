v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 600 -800 1400 -400 {flags=graph
y1=-1.3e-05
y2=8.7e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ivdda; i(vvdda2) %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw"
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_OTA_tran.raw}
B 2 1420 -800 2220 -400 {flags=graph
y1=0.57
y2=11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdda; vdda %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw
vin_clamp; vin_clamp %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw"
color="4 10"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_OTA_tran_sch_wesd.raw}
B 2 600 -380 1400 20 {flags=graph
y1=-0.0007
y2=0.025
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="io_esd; i(viesd) -1 *%0 $netlist_dir/tb_OTA_tran_sch_wesd.raw"
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_OTA_tran.raw
hcursor1_y=0.015199946}
B 2 1420 -380 2220 20 {flags=graph
y1=-0.0052
y2=0.49
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ivdd_clamp; i(vvdd_esdip) %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw
ivddio_clamp; i(viovdd_esdip) %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw
ivdd_ota; i(viota) %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw
iesd_op; i(viesd_op) %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw
ivss_clamp; i(viesd_vss) %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw
ivssio_clamp; i(viesd_iovss) %0 $netlist_dir/tb_OTA_tran_sch_wesd.raw"
color="4 10 21 12 8 10"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_OTA_tran_sch_wesd.raw}
B 2 600 60 1400 460 {flags=graph
y1=0.18404246
y2=1.6240425
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="*vsw_in
*vsw_out
vsw_ctrl1
vsw_ctrl2"
color="4 10 21 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 1420 480 2220 880 {flags=graph
y1=1.9
y2=8.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vinp
vsw_out3"
color="12 21"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 600 480 1400 880 {flags=graph
y1=-0.072
y2=2100
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vsw_in
vsw_out
vsw_out2"
color="4 10 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 1420 60 2220 460 {flags=graph
y1=2.1
y2=2000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vsw_in
vsw_out"
color="4 10"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 600 900 1400 1300 {flags=graph
y1=1.4e-08
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(viesd) -1 *"
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 1420 900 2220 1300 {flags=graph
y1=-8.4e-05
y2=0.007
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vvdda2)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 600 1320 1400 1720 {flags=graph
y1=-0.0011
y2=0.0082
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(viota)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 1420 1320 2220 1720 {flags=graph
y1=-0.0085
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vvdd_esdip)
i(viovdd_esdip)"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 2240 480 3040 880 {flags=graph
y1=1.7
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vdda
color=11
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 600 1740 1400 2140 {flags=graph
y1=1.1e-11
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Riso; i(@r3[i]) -1 *"
color=11
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 1420 1740 2220 2140 {flags=graph
y1=1.4e-38
y2=0.00011
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3956501e-06
x2=7.6364431e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cdm_nmos; i(@n.xm10.nsg13_lv_nmos[ids])
cdm_pmos; i(@n.xm36.nsg13_lv_pmos[ids])
cdm_pmos_b; i(@n.xm36.nsg13_lv_pmos[idb])"
color="11 7 21"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_OTA_tran.raw
autoload=1}
B 2 -1940 -520 -1760 40 {}
B 2 -1740 -510 -1360 50 {}
B 2 -1340 -520 -720 40 {}
B 2 -700 -520 -480 40 {}
B 2 -460 -520 -240 40 {}
B 2 -220 -520 240 40 {}
B 2 260 -520 560 40 {}
P 4 1 -1010 240 {}
T {Testbench} -810 -610 0 0 0.8 0.8 {}
T {Supply} -1890 -500 0 0 0.5 0.5 {}
T {Supply} -1890 -500 0 0 0.5 0.5 {}
T {Supply} -1890 -500 0 0 0.5 0.5 {}
T {Power clamps} -1630 -500 0 0 0.5 0.5 {}
T {HBM stimulus} -1310 -500 0 0 0.5 0.5 {}
T {ESD i/p} -680 -490 0 0 0.5 0.5 {}
T {Isolation R
+ CDM clamps} -430 -490 0 0 0.5 0.5 {}
T {DUT} -130 -500 0 0 0.5 0.5 {}
T {ESD o/p} 320 -500 0 0 0.5 0.5 {}
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
N -80 -400 280 -400 {
lab=vdda}
N -1290 -200 -1290 -180 {
lab=vsw_in}
N -1290 -20 -1290 20 {
lab=vssa}
N 180 0 180 20 {
lab=vssa}
N 180 -100 180 -60 {
lab=vout}
N -1290 -120 -1290 -80 {
lab=#net1}
N 220 -640 220 -620 {
lab=GND}
N 220 -740 220 -700 {
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
N -1450 20 -1290 20 {lab=vssa}
N -1450 -120 -1450 20 {lab=vssa}
N -1490 20 -1450 20 {lab=vssa}
N -1630 -120 -1630 20 {lab=vssa}
N -1630 -400 -1490 -400 {lab=vdda}
N 180 -200 280 -200 {lab=vout}
N 180 20 280 20 {lab=vssa}
N 280 -160 280 20 {lab=vssa}
N 420 -200 480 -200 {lab=vout}
N 280 20 480 20 {lab=vssa}
N 480 -200 480 -120 {lab=vout}
N 480 -60 480 20 {lab=vssa}
N -1490 -330 -1490 -280 {lab=vin_clamp}
N -1490 -400 -1490 -390 {lab=vdda}
N -1450 -400 -1450 -350 {lab=vdda}
N -1490 -400 -1450 -400 {lab=vdda}
N -1450 -290 -1450 -280 {lab=#net2}
N -1870 -280 -1870 -260 {lab=#net3}
N -660 -400 -660 -360 {lab=vdda}
N -660 -300 -660 -240 {lab=#net4}
N -80 -300 -80 -260 {lab=#net5}
N -80 -400 -80 -360 {lab=vdda}
N -200 -400 -80 -400 {
lab=vdda}
N 280 -300 280 -220 {lab=#net6}
N 280 -400 280 -360 {lab=vdda}
N -1630 -300 -1630 -280 {lab=#net7}
N -1630 -400 -1630 -360 {lab=vdda}
N -1670 -400 -1630 -400 {lab=vdda}
N -1670 -330 -1670 -280 {lab=#net8}
N -1670 -400 -1670 -390 {lab=vdda}
N -1490 -120 -1490 20 {lab=vssa}
N -1630 20 -1490 20 {lab=vssa}
N -1670 -120 -1670 20 {lab=vssa}
N -1670 20 -1630 20 {lab=vssa}
N -660 -180 -660 20 {lab=vssa}
N -1870 -200 -1870 -140 {lab=#net9}
N -1870 -80 -1870 20 {lab=vssa}
N -1870 20 -1670 20 {lab=vssa}
N -1870 -400 -1870 -340 {lab=vdda}
N -1870 -400 -1670 -400 {lab=vdda}
N -1010 -200 -1010 -120 {lab=vsw_out}
N -1010 -200 -930 -200 {lab=vsw_out}
N -1010 -60 -1010 20 {lab=vssa}
N -1150 20 -1010 20 {
lab=vssa}
N -1150 -160 -1150 20 {lab=vssa}
N -1290 20 -1150 20 {
lab=vssa}
N -1100 -200 -1010 -200 {lab=vsw_out}
N -1290 -200 -1210 -200 {lab=vsw_in}
N -1290 -220 -1210 -220 {lab=vdda}
N -1290 -400 -1290 -220 {lab=vdda}
N -1450 -400 -1290 -400 {lab=vdda}
N -1150 -320 -1090 -320 {lab=vsw_ctrl1}
N -1150 -320 -1150 -260 {lab=vsw_ctrl1}
N -1030 -320 -960 -320 {lab=vssa}
N -930 -400 -660 -400 {lab=vdda}
N -870 20 -660 20 {
lab=vssa}
N -820 -200 -790 -200 {lab=vsw_out2}
N -930 -480 -870 -480 {lab=vsw_ctrl2}
N -1060 -480 -990 -480 {lab=vssa}
N -320 -400 -320 -370 {lab=vdda}
N -300 -40 -300 20 {lab=vssa}
N -320 -10 -320 20 {lab=vssa}
N -320 -200 -320 -70 {lab=vinp}
N -300 -400 -300 -340 {lab=vdda}
N -320 -200 -140 -200 {lab=vinp}
N -320 -310 -320 -200 {lab=vinp}
N -870 -480 -870 -260 {lab=vsw_ctrl2}
N -730 -200 -660 -200 {lab=vsw_out3}
N -930 -400 -930 -220 {lab=vdda}
N -1290 -400 -930 -400 {lab=vdda}
N -870 -160 -870 20 {lab=vssa}
N -1010 20 -870 20 {
lab=vssa}
N -520 -200 -440 -200 {lab=vsw_out3}
N -360 -400 -320 -400 {lab=vdda}
N -360 20 -320 20 {
lab=vssa}
N -320 -400 -300 -400 {lab=vdda}
N -320 -340 -300 -340 {
lab=vdda}
N -320 -40 -300 -40 {
lab=vssa}
N -320 20 -300 20 {
lab=vssa}
N -360 -400 -360 -340 {lab=vdda}
N -660 -400 -360 -400 {lab=vdda}
N -360 -40 -360 20 {lab=vssa}
N -660 20 -360 20 {
lab=vssa}
N -380 -200 -320 -200 {lab=vinp}
N -300 -400 -200 -400 {lab=vdda}
N -300 20 -80 20 {lab=vssa}
C {devices/isource.sym} -200 -300 0 0 {name=Iisnk value=xibias}
C {OTA.sym} -80 -160 0 0 {name=xota
schematic=OTA.sch
xschematic=OTA_DCOP.sch
xschematic=OTA_ideal_order0_vloga.sch

xschematic=OTA_final
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/LAYOUT_demo/OTA_final_RC.spice)"

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
C {devices/vsource.sym} -1290 -150 0 0 {name=Vstep value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xstep_en*0m\})"
format="@name @pinlist @value"
}
C {devices/vsource.sym} -1290 -50 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {devices/vsource.sym} 220 -670 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} 220 -620 0 0 {name=l1 lab=GND}
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
C {devices/lab_wire.sym} 220 -720 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -40 20 0 1 {name=p7 sig_type=std_logic lab=vssa

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
.param xvinp = 2000
.param xibias = 40u
.param xCload = 0.75p
.param xCpad = 100f
.param xgm_dp = 1e-3
.param xRin = 1/xgm_dp
.param xCout = 1p
.param xRout = 1e6
.param xtrf = 1.5n
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'
.param xstep_en = 1

* vlogA instantiation
*.model OTA_vcvs OTA_vcvs
.model ideal_sw ideal_sw

  
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  
  .include tb_OTA.save
  *.save all
  .save v(vout) v(vinp) v(vfb) v(vdda) v(xota.pdio) v(xota.vtail) v(vout_pad) v(vin_clamp)
  .save v(vsw_in) v(vsw_out) v(vsw_ctrl1) v(vsw_ctrl2) v(vsw_outs) v(vsw_out2) v(vsw_out3)
  .save i(v.xota.Virhs) i(v.xota.Vitail) i(xota.vdda) i(v.Vdda) i(xesd_ip.pad) i(v.Vstep) i(@r3[i])
  .save i(@n.xota.xm6.nsg13_lv_pmos[ids]) i(@n.xm36.nsg13_lv_pmos[ids]) i(@n.xm10.nsg13_lv_nmos[ids]) 
  .save @n.xm10.nsg13_lv_nmos[ids] @n.xm36.nsg13_lv_pmos[ids] @n.xm36.nsg13_lv_pmos[idb]
    
  
  .control
  let xtsim = $&xtsim_var 
*  pre_osdi OTA_vcvs.osdi
  pre_osdi ideal_sw.osdi
  save all

** 1. DCOP ANALYSIS ** 

  op
  set filetype=ascii
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
xtclcommand="xschem raw_read $netlist_dir/tb_OTA_tran_sch_wesd.raw tran"
xtclcommand="xschem raw_read $netlist_dir/tb_OTA_tran.raw tran 0u 3u"
tclcommand="xschem raw_read $netlist_dir/tb_OTA_tran.raw tran"
}
C {sg13g2_IOPadVdd.sym} -1710 -200 0 0 {name=xclamp
xschematic=sg13g2_IOPadVdd.sch
xschematic=sg13g2_IOPadVdd_shrt.sch

xschematic=sg13g2_IOPadVdd_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_RC.spice)"

xschematic=sg13g2_IOPadVdd_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVdd_flat_C.spice)"
}
C {sg13g2_IOPadVss.sym} -1670 -180 0 0 {name=xiopadvss
schematic=sg13g2_IOPadVss.sch
xschematic=sg13g2_IOPadVss_shrt.sch

xschematic=sg13g2_IOPadVss_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_RC.spice)"

xschematic=sg13g2_IOPadVss_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadVss_flat_C.spice)"}
C {sg13g2_IOPadAnalog.sym} 260 -320 0 0 {name=xesd_op
schematic=sg13g2_IOPadAnalog.sch
xschematic=sg13g2_IOPadAnalog_shrt.sch

xschematic=sg13g2_IOPadAnalog_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_RC.spice)"

xschematic=sg13g2_IOPadAnalog_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_flat_C.spice)"

}
C {devices/capa.sym} 480 -90 0 0 {name=C2
m=1
value=\{xCpad\}
footprint=1206
device="ceramic capacitor"}
C {noconn.sym} 420 -240 2 0 {name=l2}
C {devices/capa.sym} 180 -30 0 0 {name=C4
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} -1870 -310 0 0 {name=R1
value=1000
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -1870 -110 0 0 {name=Vvdda1 value="xvdda"
format="@name @pinlist @value"}
C {devices/vsource.sym} -1450 -320 0 0 {name=Vvdd_esdip value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -1490 -360 0 0 {name=Viovdd_esdip value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -1870 -230 0 0 {name=Vvdda2 value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -660 -330 0 0 {name=Viesd value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -80 -330 0 0 {name=Viota value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} 280 -330 0 0 {name=Viesd_op value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -1630 -330 0 0 {name=Viesd_vss value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -1670 -360 0 0 {name=Viesd_iovss value=0
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -1490 -290 3 1 {name=p8 sig_type=std_logic lab=vin_clamp

}
C {devices/capa.sym} -1010 -90 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -760 -200 1 0 {name=R2
value=1.5k
footprint=1206
device=resistor
m=1}
C {ideal_switch.sym} -1060 -200 0 0 {name=x1}
C {devices/vsource.sym} -1060 -320 3 0 {name=Vstep1 value="pwl (0 \{xvdda*1\} \{xtsim/2\} \{xvdda*1\} \{\{xtsim/2\}+xtrf\} 0)"
format="@name @pinlist @value"
}
C {devices/lab_wire.sym} -1000 -320 0 1 {name=p9 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -1150 -320 0 1 {name=p10 sig_type=std_logic lab=vsw_ctrl1

}
C {devices/lab_wire.sym} -1280 -200 0 1 {name=p11 sig_type=std_logic lab=vsw_in

}
C {devices/lab_wire.sym} -1070 -200 0 1 {name=p12 sig_type=std_logic lab=vsw_out

}
C {ideal_switch.sym} -780 -200 0 0 {name=x2}
C {devices/vsource.sym} -960 -480 1 0 {name=Vstep2 value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xvdda*1\})"
format="@name @pinlist @value"
}
C {devices/lab_wire.sym} -1020 -480 2 1 {name=p13 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -870 -480 2 1 {name=p14 sig_type=std_logic lab=vsw_ctrl2

}
C {devices/lab_wire.sym} -810 -200 1 1 {name=p15 sig_type=std_logic lab=vsw_out2

}
C {noconn.sym} -520 -240 2 0 {name=l4}
C {sg13g2_pr/sg13_lv_nmos.sym} -340 -40 0 0 {name=M10
l=0.13u
w=0.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -340 -340 0 0 {name=M36
l=0.13u
w=0.5u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {res.sym} -410 -200 1 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} -690 -200 1 1 {name=p16 sig_type=std_logic lab=vsw_out3

}
C {/home/slice/xschem/Padring_IHP/IOPadAnalog/sg13g2_IOPadAnalog.sym} -680 -320 0 0 {name=xesd_ip1
xschematic=sg13g2_IOPadAnalog.sch
xschematic=sg13g2_IOPadAnalog_shrt.sch

xschematic=sg13g2_IOPadAnalog_with_bondpad_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/IOPadAnalog/sg13g2_IOPadAnalog_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/IOPadAnalog/sg13g2_IOPadAnalog_flat_RC.spice)"

schematic=sg13g2_IOPadAnalog_with_bondpad_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/IOPadAnalog/sg13g2_IOPadAnalog_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/IOPadAnalog/sg13g2_IOPadAnalog_flat_C.spice)"
}
