v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 540 -580 1340 -180 {flags=graph
y1=0.99
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.615519e-07
x2=4.3615519e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vmeas
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_res_ihp.raw}
B 2 540 -160 1340 240 {flags=graph
y1=6.6e-05
y2=6.7e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.615519e-07
x2=4.3615519e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="imeas; i(vvmeas) -1 *"
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_res_ihp.raw}
B 2 -300 -580 500 -180 {flags=graph
y1=15000
y2=16000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.615519e-07
x2=4.3615519e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"rmeas; vmeas i(Vvmeas) / -1 *\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_res_ihp.raw}
N -100 160 -100 180 {lab=GND}
N -100 60 -100 100 {lab=vssa}
N 0 160 0 200 {lab=vssa}
N 0 60 0 100 {lab=vmeas}
N 0 60 140 60 {lab=vmeas}
N 140 60 140 100 {lab=vmeas}
N 140 160 140 200 {lab=vssa}
C {vsource.sym} -100 130 0 0 {name=Vvssa value=0 savecurrent=false}
C {gnd.sym} -100 180 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -100 90 1 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/code.sym} -280 90 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ

* Parameters

.param xvmeas = 1
.csparam xvmeas_var = 'xvmeas'
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'
.temp 27

  .save v(vmeas) i(Vvmeas)
  
  .control 
  
  *set xTj = ( -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 )
  set xTj = ( 27 )
  foreach xTj_var $xTj

  let Tj_meas = $xTj_var

  echo temperature is \\"$&Tj_meas\\"

  set temp = $xTj_var

** 1. TRAN ANALYSIS ** 

  tran 1n $&xtsim_var
  *set filetype=ascii
  remzerovec
  write tb_res_ihp.raw
  
** 2. MEASURES ** 
  
  meas tran vmeas_avg AVG vmeas
  meas tran imeas_avg AVG i(Vvmeas)
  let rmeas = (vmeas_avg/imeas_avg)*-1
  echo \\"$&Tj_meas\\" >> res_measures_T.txt
  echo \\"$&rmeas\\"
  echo \\"$&rmeas\\" >> res_measures_typ.txt
  
  end

  setplot
*quit 0
.endc


"}
C {vsource.sym} 0 130 0 0 {name=Vvmeas value="xvmeas"
format="@name @pinlist @value"}
C {lab_wire.sym} 0 170 3 0 {name=p34 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 100 60 0 0 {name=p35 sig_type=std_logic lab=vmeas}
C {lab_wire.sym} 140 170 3 0 {name=p2 sig_type=std_logic lab=vssa}
C {launcher.sym} -200 0 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_res_ihp.raw tran"


}
C {devices/launcher.sym} -200 -40 0 0 {# Process corner sweep for tt,wcs,bcs
# Assumes stim file has set corner to tt
name=h5
descr="Process corners: res"
tclcommand="
set spicefile $netlist_dir/tb_res_ihp.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to wcs corner
exec sed -i \{/^\\.lib/s/cornerRES.lib res_typ/cornerRES.lib res_wcs/\} $spicefile
exec sed -i \{s/res_measures_typ.txt/res_measures_wcs.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to bcs corner
exec sed -i \{/^\\.lib/s/cornerRES.lib res_wcs/cornerRES.lib res_bcs/\} $spicefile
exec sed -i \{s/res_measures_wcs.txt/res_measures_bcs.txt/\} $spicefile
simulate
"
}
C {sg13g2_pr/rhigh.sym} 140 130 0 0 {name=R1
w=1e-6
l=160e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
m=1
}
