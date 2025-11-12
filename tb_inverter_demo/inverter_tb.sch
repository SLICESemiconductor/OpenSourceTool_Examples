v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 600 -740 1400 -340 {flags=graph
y1=-0.0058
y2=10
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
node="vin
vout
vin_esd
vout_pre_esd"
color="4 7 12 10"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_inv_tran.raw
autoload=1
linewidth_mult=4
}
B 2 600 -300 1400 100 {flags=graph,unlocked
y1=2.8
y2=9.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran

autoload=1
linewidth_mult=4
x2=5e-06

rawfile=$netlist_dir/tb_inv_tran.raw
color=10
node=vdda_io}
B 2 600 140 1400 540 {flags=graph
y1=-1.5
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.5005996e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 10"
node="i(viesd_iovdd)
i(viesd_clamp_iovdd)"}
T {Transient Analysis (Voltages)} 710 -820 0 0 0.8 0.8 {}
N -1780 70 -1780 90 {
lab=GND}
N -1780 -30 -1780 10 {
lab=vssa}
N -500 -40 -500 0 {lab=vin}
N -1580 60 -1580 100 {lab=vssa}
N -660 100 -500 100 {lab=vssa}
N -500 60 -500 100 {lab=vssa}
N -340 100 -20 100 {lab=vssa}
N -20 20 -20 100 {lab=vssa}
N -340 0 -330 -0 {lab=vssa}
N -340 0 -340 100 {lab=vssa}
N -500 100 -340 100 {lab=vssa}
N -340 -20 -330 -20 {lab=vssa}
N -340 -20 -340 -0 {lab=vssa}
N -1660 60 -1660 100 {lab=vssa}
N -1660 100 -1580 100 {lab=vssa}
N -400 -60 -330 -60 {lab=#net1}
N -20 -200 380 -200 {lab=vdda}
N -190 -60 -160 -60 {lab=vssa}
N -190 -40 -60 -40 {lab=vin_esd}
N -500 -40 -330 -40 {lab=vin}
N 360 100 420 100 {lab=vssa}
N 420 60 420 100 {lab=vssa}
N 420 -40 420 0 {lab=vout}
N 340 -40 420 -40 {lab=vout}
N -360 -80 -330 -80 {lab=#net2}
N -360 -240 360 -240 {lab=vdda_io}
N 100 -80 200 -80 {lab=vout_pre_esd}
N 170 -60 200 -60 {lab=vdda}
N 340 -80 360 -80 {lab=vdda_io}
N 380 -200 380 -60 {lab=vdda}
N 340 -60 380 -60 {lab=vdda}
N 340 -0 360 0 {lab=vssa}
N 360 0 360 100 {lab=vssa}
N 340 -20 360 -20 {lab=vssa}
N 360 -20 360 -0 {lab=vssa}
N -940 60 -940 100 {lab=vssa}
N -1100 100 -940 100 {lab=vssa}
N -900 60 -900 100 {lab=vssa}
N -940 100 -900 100 {lab=vssa}
N -700 60 -700 100 {lab=vssa}
N -900 100 -700 100 {lab=vssa}
N -660 60 -660 100 {lab=vssa}
N -700 100 -660 100 {lab=vssa}
N -940 -240 -940 -100 {lab=vdda_io}
N -1140 -240 -940 -240 {lab=vdda_io}
N -900 -200 -900 -100 {lab=vdda}
N -1100 -200 -900 -200 {lab=vdda}
N -700 -240 -360 -240 {lab=vdda_io}
N -660 -200 -660 -170 {lab=vdda}
N -900 -200 -660 -200 {lab=vdda}
N -660 -110 -660 -100 {lab=#net3}
N -1660 -240 -1660 -180 {lab=vdda_io}
N -1580 -200 -1580 -180 {lab=vdda}
N -1660 -120 -1660 -80 {lab=#net4}
N -1580 -120 -1580 -80 {lab=#net5}
N -1660 -20 -1660 0 {lab=#net6}
N -1580 -20 -1580 0 {lab=#net7}
N -360 -120 -360 -80 {lab=#net2}
N -360 -240 -360 -180 {lab=vdda_io}
N -400 -200 -400 -120 {lab=vdda}
N -660 -200 -400 -200 {lab=vdda}
N -20 -120 -20 -100 {lab=#net8}
N -20 -200 -20 -180 {lab=vdda}
N -400 -200 -20 -200 {lab=vdda}
N -700 -120 -700 -100 {lab=#net9}
N -700 -240 -700 -180 {lab=vdda_io}
N -940 -240 -700 -240 {lab=vdda_io}
N -1100 -200 -1100 -100 {lab=vdda}
N -1320 -200 -1100 -200 {lab=vdda}
N -1140 -240 -1140 -100 {lab=vdda_io}
N -1360 -240 -1140 -240 {lab=vdda_io}
N -1100 60 -1100 100 {lab=vssa}
N -1140 100 -1100 100 {lab=vssa}
N -1140 60 -1140 100 {lab=vssa}
N -1320 100 -1140 100 {lab=vssa}
N -1320 -120 -1320 -100 {lab=#net10}
N -1360 -120 -1360 -100 {lab=#net11}
N -1360 -240 -1360 -180 {lab=vdda_io}
N -1660 -240 -1360 -240 {lab=vdda_io}
N -1320 -200 -1320 -180 {lab=vdda}
N -1580 -200 -1320 -200 {lab=vdda}
N -1320 60 -1320 100 {lab=vssa}
N -1360 100 -1320 100 {lab=vssa}
N -1360 60 -1360 100 {lab=vssa}
N -1580 100 -1360 100 {lab=vssa}
N 60 -40 100 -40 {lab=vout_pre_esd}
N 360 -240 360 -80 {lab=vdda_io}
N 100 -80 100 -40 {lab=vout_pre_esd}
N -20 100 360 100 {lab=vssa}
C {devices/vsource.sym} -1780 40 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -1780 90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -1780 0 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/vsource.sym} -1580 30 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -1080 -200 0 1 {name=p2 sig_type=std_logic lab=vdda

}
C {devices/vsource.sym} -500 30 0 0 {name=Vstep value="pwl (0 0 \{xtsim/4\} 0 \{\{xtsim/4\}+xtrf\} 10 \{xtsim/2\} 10 \{\{xtsim/2\}+xtrf\} 0)"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -1540 100 0 1 {name=p1 sig_type=std_logic lab=vssa

}
C {devices/code.sym} 270 190 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
*.include /home/slice/xschem/tb_inverter/PEX/RC/output/inverter2__TOP/magic_RC/inverter.spice
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
.include /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/diodes.lib


* Parameters
.param xvdda = 1.5
.param xvdda_io = 3.3
.csparam xvdda_var = 'xvdda'
.param xCload = 50f
.param xtrf = 4.5n
.param xRsup = 1000
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'

* vlogA instantiation
.model OTA_vcvs OTA_vcvs
  
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  .save
  
  +  @n.xinv.xM_NMOS.nsg13_lv_nmos[vgs]
  +  @n.xinv.xM_NMOS.nsg13_lv_nmos[vds]
  +  @n.xinv.xM_NMOS.nsg13_lv_nmos[vth]
  +  @n.xinv.xM_NMOS.nsg13_lv_nmos[gds]
  +  @n.xinv.xM_NMOS.nsg13_lv_nmos[gm]
  +  @n.xinv.xM_NMOS.nsg13_lv_nmos[ids]
  +  @n.xinv.xM_NMOS.nsg13_lv_nmos[vsat]
  
  +  @n.xinv.xM_PMOS.nsg13_lv_pmos[vgs]
  +  @n.xinv.xM_PMOS.nsg13_lv_pmos[vds]
  +  @n.xinv.xM_PMOS.nsg13_lv_pmos[vth]
  +  @n.xinv.xM_PMOS.nsg13_lv_pmos[gds]
  +  @n.xinv.xM_PMOS.nsg13_lv_pmos[gm]
  +  @n.xinv.xM_PMOS.nsg13_lv_pmos[ids]
  +  @n.xinv.xM_PMOS.nsg13_lv_pmos[vsat]
  
 
  .save v(vout) v(vin) v(vdda) v(vssa) v(vout_sch) v(vout_rcpex) v(vin_esd) v(vout_pre_esd)
  .save i(xinv.vdda) i(v.xota.Vitail)
  
  .control
  pre_osdi OTA_vcvs.osdi
  save all

** 1. DCOP ANALYSIS ** 

  op
 * set filetype=ascii
  remzerovec
  write tb_inv_op.raw

** 2. TRAN ANALYSIS ** 

  tran 1n $&xtsim_var
  remzerovec
  write tb_inv_tran.raw
  
** 3. MEASURES **

  echo -- 
  meas TRAN t_90_10 TRIG v(vout) VAL=0.9*xvdda_var FALL=1 TARG v(vout) VAL=0.1*xvdda_var FALL=1
  meas TRAN t_10_90 TRIG v(vout) VAL=0.1*xvdda_var RISE=1 TARG v(vout) VAL=0.9*xvdda_var RISE=1
  echo --

  setplot
*quit 0
.endc


"}
C {devices/lab_wire.sym} -480 -40 0 1 {name=p4 sig_type=std_logic lab=vin

}
C {inverter.sym} 60 40 0 0 {name=xinv
schematic=inverter.sch

xschematic=inverter_rcpex
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_inverter_demo/PEX/RC/output/inverter__inverter/magic_RC/inverter.pex.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_inverter_demo/PEX/RC/output/inverter__inverter/magic_RC/inverter.pex.spice)"

xschematic=inverter_cpex
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_inverter_demo/PEX/C/output/inverter__inverter/magic_CC/inverter.pex.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_inverter_demo/PEX/C/output/inverter__inverter/magic_CC/inverter.pex.spice)"

xschematic=inverter_rpex
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_inverter_demo/PEX/R/output/inverter__inverter/magic_R/inverter.pex.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_inverter_demo/PEX/R/output/inverter__inverter/magic_R/inverter.pex.spice)"

xschematic=inverter_fepex
xspice_sym_def="tcleval(.include /home/slice/xschem/tb_inverter_demo/PEX/FE/output/inverter__inverter/magic_CC/inverter.pex.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/tb_inverter_demo/PEX/FE/output/inverter__inverter/magic_CC/inverter.pex.spice)"}
C {devices/lab_wire.sym} -120 -40 0 1 {name=p5 sig_type=std_logic lab=vin_esd

}
C {devices/vsource.sym} -1660 30 0 0 {name=Vvdda_io value="xvdda_io"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -1080 -240 0 1 {name=p7 sig_type=std_logic lab=vdda_io
}
C {devices/lab_wire.sym} -180 -60 0 1 {name=p8 sig_type=std_logic lab=vssa

}
C {launcher.sym} 340 360 0 0 {name=h5
descr="load waves" 
xtclcommand="xschem raw_read $netlist_dir/tb_OTA_tran_sch_wesd.raw tran"
xtclcommand="xschem raw_read $netlist_dir/tb_OTA_tran.raw tran 0u 3u"
tclcommand="xschem raw_read $netlist_dir/tb_inv_tran.raw tran"
}
C {noconn.sym} -190 -80 2 0 {name=l4}
C {devices/lab_wire.sym} 380 -40 0 1 {name=p10 sig_type=std_logic lab=vout

}
C {devices/capa.sym} 420 30 0 0 {name=C1
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 100 -80 0 1 {name=p11 sig_type=std_logic lab=vout_pre_esd

}
C {devices/lab_wire.sym} 190 -60 0 0 {name=p3 sig_type=std_logic lab=vdda

}
C {devices/vsource.sym} -660 -140 0 0 {name=Viesd_clamp_vdd value=0
format="@name @pinlist @value"}
C {res.sym} -1580 -150 0 0 {name=R1
value=xRsup
footprint=1206
device=resistor
m=1}
C {res.sym} -1660 -150 0 0 {name=R2
value=xRsup
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -1660 -50 0 0 {name=Vivdda_io value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -1580 -50 0 0 {name=Vivdda value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -360 -150 0 0 {name=Viesd_iovdd value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -400 -90 0 0 {name=Viesd_vdd value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -20 -150 0 0 {name=Viinv value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -700 -150 0 0 {name=Viesd_clamp_iovdd value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -1320 -150 0 0 {name=Viesd_clamp_vdd1 value=0
format="@name @pinlist @value"}
C {devices/vsource.sym} -1360 -150 0 0 {name=Viesd_clamp_iovdd1 value=0
format="@name @pinlist @value"}
C {/home/slice/xschem/Padring_IHP/IOPadDigital_30mA/sg13g2_IOPadInOut30mA.sym} -350 -40 0 0 {name=xesd_ip1
xschematic=sg13g2_IOPadInOut30mA_shrt_c2p.sch
xschematic=sg13g2_IOPadInOut30mA_shrt_p2c.sch

xschematic=sg13g2_IOPadInOut30mA_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/IOPadDigital_30mA/sg13g2_IOPadInOut30mA_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/IOPadDigital_30mA/sg13g2_IOPadInOut30mA_flat_RC.spice)"

schematic=sg13g2_IOPadInOut30mA_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/IOPadDigital_30mA/sg13g2_IOPadInOut30mA_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/IOPadDigital_30mA/sg13g2_IOPadInOut30mA_flat_C.spice)"}
C {/home/slice/xschem/Padring_IHP/IOtriPadDigital_30mA/sg13g2_IOPadTriOut30mA.sym} 500 -200 0 1 {name=xesd_op2
schematic=sg13g2_IOPadTriOut30mA_shrt.sch

xschematic=sg13g2_IOPadTriOut30mA_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/IOtriPadDigital_30mA/sg13g2_IOPadTriOut30mA_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/IOtriPadDigital_30mA/sg13g2_IOPadTriOut30mA_flat_RC.spice)"

xschematic=sg13g2_IOPadTriOut30mA_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/IOtriPadDigital_30mA/sg13g2_IOPadTriOut30mA_flat_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/IOtriPadDigital_30mA/sg13g2_IOPadTriOut30mA_flat_C.spice)"}
C {/home/slice/xschem/Padring_IHP/vddio_pwrclamp/sg13g2_IOPadIOVdd.sym} -920 -20 0 0 {name=xesd_iovdd1

schematic=sg13g2_IOPadIOVdd.sch

xschematic=sg13g2_IOPadIOVdd_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vddio_pwrclamp/sg13g2_IOPadIOVdd_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vddio_pwrclamp/sg13g2_IOPadIOVdd_flat_RC.spice)"

xschematic=sg13g2_IOPadIOVdd_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vddio_pwrclamp/sg13g2_IOPadIOVdd_flat_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vddio_pwrclamp/sg13g2_IOPadIOVdd_flat_C.spice)"}
C {/home/slice/xschem/Padring_IHP/vdd_pwrclamp/sg13g2_IOPadVdd.sym} -1580 -20 0 0 {name=xesd_vdd

schematic=sg13g2_IOPadVdd.sch

xschematic=sg13g2_IOPadVdd_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vdd_pwrclamp/sg13g2_IOPadVdd_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vdd_pwrclamp/sg13g2_IOPadVdd_flat_RC.spice)"

xschematic=sg13g2_IOPadVdd_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vdd_pwrclamp/sg13g2_IOPadVdd_flat_C.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vdd_pwrclamp/sg13g2_IOPadVdd_flat_C.spice)"}
C {/home/slice/xschem/Padring_IHP/vss_clamp/sg13g2_IOPadVss.sym} -940 0 0 0 {name=xesd_vss

xschematic=sg13g2_IOPadVss.sch

xschematic=sg13g2_IOPadVss_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vss_clamp/sg13g2_IOPadVss_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vss_clamp/sg13g2_IOPadVss_flat_RC.spice)"

schematic=sg13g2_IOPadVss_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vss_clamp/sg13g2_IOPadVss_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vss_clamp/sg13g2_IOPadVss_flat_C.spice)"
}
C {/home/slice/xschem/Padring_IHP/vssio_clamp/sg13g2_IOPadIOVss.sym} -1140 0 0 0 {name=xesd_iovss

xschematic=sg13g2_IOPadIOVss.sch

xschematic=sg13g2_IOPadIOVss_flat.sch
xspice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vssio_clamp/sg13g2_IOPadIOVss_flat_RC.spice)"
xtclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vssio_clamp/sg13g2_IOPadIOVss_flat_RC.spice)"

schematic=sg13g2_IOPadIOVss_flat.sch
spice_sym_def="tcleval(.include /home/slice/xschem/Padring_IHP/vssio_clamp/sg13g2_IOPadIOVss_flat_C.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/Padring_IHP/vssio_clamp/sg13g2_IOPadIOVss_flat_C.spice)"}
