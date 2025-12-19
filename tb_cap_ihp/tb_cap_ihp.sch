v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 260 -300 1060 100 {flags=graph
y1=-40
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"|vout|(dB); vout db20()\\"
\\" -3 \\""
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_cmeas_ihp_ac.raw
sim_type=ac
autoload=1}
B 2 260 120 1060 520 {flags=graph
y1=-90
y2=-3.6e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"phi(vout) (deg); ph(vout)\\"
\\" -45\\""
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_cmeas_ihp_ac.raw
sim_type=ac
autoload=1}
T {Stimulus} -10 -270 0 0 0.4 0.4 {}
N -50 220 -50 240 {
lab=GND}
N -50 120 -50 160 {
lab=vssa}
N 60 220 60 260 {
lab=vssa}
N 60 120 60 160 {
lab=vin}
N -80 380 -40 380 {
lab=vin}
N 20 380 80 380 {lab=vout}
N 40 480 80 480 {
lab=vssa}
N 80 380 80 400 {lab=vout}
N 80 460 80 480 {lab=vssa}
C {devices/lab_wire.sym} -50 150 1 0 {name=p6 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 60 230 3 0 {name=p8 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 60 150 1 0 {name=p9 sig_type=std_logic lab=vin}
C {res.sym} -10 380 1 0 {name=R1
value=\{xrmeas\}
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} -50 380 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 60 380 0 0 {name=p11 sig_type=std_logic lab=vout}
C {vsource.sym} -50 190 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {vsource.sym} 60 190 0 0 {name=Vvin value="xvin ac 1"
format="@name @pinlist @value"}
C {devices/code.sym} -40 -70 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerCAP.lib cap_typ


* Parameters
.param xvin = -3.4
.param xrmeas = 1k
.param xCval = 1p
.csparam xvin_var = 'xvin'
.csparam xrmeas_var = 'xrmeas'
.temp 27

  
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  
  .include tb_cmeas_ihp.save
  
  *.save all
  .save v(vin) v(vout)
  .save @n.xm1.nsg13_lv_nmos[ids] @n.xm2.nsg13_hv_nmos[ids] @n.xm3.nsg13_lv_pmos[ids] @n.xm4.nsg13_hv_pmos[ids]
    
  .control
  
  *set xTj = ( -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 )
  set xTj = ( 27 )
  foreach xTj_var $xTj

  let Tj_meas = $xTj_var

  echo temperature is \\"$&Tj_meas\\"

  set temp = $xTj_var


  ** 1. AC ANALYSIS **   
  
  ac dec 10 1 1000G
  remzerovec
  write tb_cap_ihp.raw  
  
  ** 2. MEASURES **
  
  let n45_rads = -45*(pi/180) 
  echo \\"$&n45_rads\\"
  meas AC BW WHEN vp(vout)=n45_rads CROSS=1
  echo \\"$&BW\\"
  echo --
  let cmeas = 1/(2*pi*xrmeas_var*BW)
  echo \\"$&cmeas\\"
  echo \\"$&cmeas\\" >> cap_measures_typ.txt
  
  end

  setplot
*quit 0
.endc


"}
C {gnd.sym} -50 240 0 0 {name=l1 lab=GND}
C {launcher.sym} -20 -180 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_cmeas_ihp_ac.raw ac"


}
C {devices/lab_wire.sym} 70 480 0 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/launcher.sym} -20 -140 0 0 {# Process corner sweep for tt,wcs,bcs
# Assumes stim file has set corner to tt
name=h5
descr="Process corners: cap"
tclcommand="
set spicefile $netlist_dir/tb_cap_ihp.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to wcs corner
exec sed -i \{/^\\.lib/s/cornerCAP.lib cap_typ/cornerCAP.lib cap_wcs/\} $spicefile
exec sed -i \{s/cap_measures_typ.txt/cap_measures_wcs.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to bcs corner
exec sed -i \{/^\\.lib/s/cornerCAP.lib cap_wcs/cornerCAP.lib cap_bcs/\} $spicefile
exec sed -i \{s/cap_measures_wcs.txt/cap_measures_bcs.txt/\} $spicefile
simulate
"
}
C {sg13g2_pr/cap_rfcmim.sym} 80 430 0 0 {name=C2 
model=cap_rfcmim
w=10.0e-6
l=10.0e-6
wfeed=5.0e-6
spiceprefix=X}
