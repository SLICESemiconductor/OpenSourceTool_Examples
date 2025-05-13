v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 360 -300 1160 100 {flags=graph
y1=-5.5511151e-17
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.492615e-06
x2=2.5115045e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vin
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_inv_tran.raw
autoload=1
linewidth_mult=4
}
B 2 360 -800 1160 -400 {flags=graph
y1=-0.00013
y2=4.4e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.492615e-06
x2=2.5115045e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_inv_tran.raw
autoload=1
linewidth_mult=4
color=8
node=i(vvdda)}
B 2 1220 -300 2020 100 {flags=graph,unlocked
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.492615e-06
x2=2.5115045e-06
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
sim_type=tran
rawfile=$netlist_dir/tb_inv_tran.raw
autoload=1
linewidth_mult=4
}
T {Transient Analysis (Voltages)} 500 -380 0 0 0.8 0.8 {}
T {Transient Analysis (Currents)} 500 -880 0 0 0.8 0.8 {}
N -340 60 -340 80 {
lab=GND}
N -340 -40 -340 0 {
lab=vssa}
N -140 -40 -60 -40 {lab=vin}
N -140 -40 -140 0 {lab=vin}
N -260 60 -260 100 {lab=vssa}
N -260 100 -140 100 {lab=vssa}
N -140 60 -140 100 {lab=vssa}
N -140 100 -20 100 {lab=vssa}
N -20 20 -20 100 {lab=vssa}
N -260 -140 -260 0 {lab=vdda}
N -260 -140 -20 -140 {lab=vdda}
N -20 -140 -20 -100 {lab=vdda}
N 60 -40 120 -40 {lab=vout}
N -20 100 120 100 {lab=vssa}
N 120 60 120 100 {lab=vssa}
N 120 -40 120 0 {lab=vout}
C {devices/vsource.sym} -340 30 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -340 80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -340 -10 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/vsource.sym} -260 30 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -200 -140 0 1 {name=p2 sig_type=std_logic lab=vdda

}
C {devices/vsource.sym} -140 30 0 0 {name=Vstep value="pwl (0 0 \{xtsim/4\} 0 \{\{xtsim/4\}+xtrf\} xvdda \{xtsim/2\} xvdda \{\{xtsim/2\}+xtrf\} 0)"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -220 100 0 1 {name=p1 sig_type=std_logic lab=vssa

}
C {devices/capa.sym} 120 30 0 0 {name=C2
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 80 -40 0 1 {name=p3 sig_type=std_logic lab=vout

}
C {devices/code.sym} -530 -30 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
*.include /home/slice/xschem/tb_inverter/PEX/RC/output/inverter2__TOP/magic_RC/inverter.spice

* Parameters
.param xvdda = 1.8
.csparam xvdda_var = 'xvdda'
.param xCload = 50f
.param xtrf = 20p
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
  
 
  .save v(vout) v(vin) v(vdda) v(vssa)
  .save i(xinv.vdda)
  
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
C {devices/lab_wire.sym} -120 -40 0 1 {name=p4 sig_type=std_logic lab=vin

}
C {inverter.sym} 60 40 0 0 {name=x1
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
