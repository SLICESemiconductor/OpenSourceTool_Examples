v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Process corner launchers is a placeholder as I dont
use it for Art analysis since mc is run for various 
dimensions. Running mc across process is only practical 
for one dimension (w.r.t changing file names etc.). Should
I need this tb for that and want mc across process data, I
will keep these here. However, they will need to be edited
according to the file names I want. } 80 -190 0 0 0.4 0.4 {}
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
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ_mismatch

* Parameters

.param xvmeas = 1
.csparam xvmeas_var = 'xvmeas'
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'
.temp 27

  .save v(vmeas) i(Vvmeas)
  
  .control 
  
    let run = 1

    dowhile run <= 100
    reset

** 1. TRAN ANALYSIS ** 

  tran 1n $&xtsim_var

** 2. MEASURES ** 
  
  meas tran vmeas_avg AVG vmeas
  meas tran imeas_avg AVG i(Vvmeas)
  let rmeas = (vmeas_avg/imeas_avg)*-1
  echo \\"$&rmeas\\"
  echo \\"$&rmeas\\" >> res_measures_typ_mc.txt 
  
    remzerovec
    set filetype=binary
    ** first write deletes existing file
    write tb_res_ihp_mc.raw
    ** set appendwrite appends following writes to existing raw file
    set appendwrite
    let run = run+1

    end

  setplot
quit 0
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
C {devices/launcher.sym} -220 -120 0 0 {# Process corner sweep for tt,wcs,bcs
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
C {sg13g2_pr/rppd.sym} 140 130 0 0 {name=R2
w=1e-6
l=10e-6
model=rppd
body=sub!
spiceprefix=X
b=0
m=1
}
