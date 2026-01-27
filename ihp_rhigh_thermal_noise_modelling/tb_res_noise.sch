v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 20 -160 820 240 {flags=graph
y1=0
y2=1
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
node="vmeas_res
vdda_res"
color="4 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_res_noise.raw
sim_type=tran
autoload=1}
B 2 840 -160 1640 240 {flags=graph
y1=1.1e-10
y2=2.7e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.92108507
x2=8.9210851
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=onoise_spectrum
color=4
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_res_noise_density.raw
sim_type=noise
autoload=1}
B 2 840 260 1640 660 {flags=graph
y1=0
y2=6.7e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.92108507
x2=8.9210851
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"integrated_noise;onoise_spectrum onoise_spectrum * integ() sqrt()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_res_noise_density.raw
sim_type=noise
autoload=1}
B 2 20 260 820 660 {flags=graph
y1=19000
y2=20000
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
node="\\"rmeas; vmeas_res i(Vvdda_res) / -1 *\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_res_noise.raw
sim_type=tran
autoload=1}
N -740 200 -740 220 {lab=GND}
N -740 100 -740 140 {lab=vssa}
N -660 200 -660 240 {
lab=vssa}
N -660 100 -660 140 {
lab=vdda}
N -480 -20 -480 60 {
lab=vdda}
N -320 320 -320 360 {
lab=vssa}
N -320 220 -320 260 {lab=vmeas_noise}
N -480 580 -480 620 {
lab=vssa}
N -480 480 -480 520 {
lab=vmeas_res}
N -480 480 -240 480 {lab=vmeas_res}
N -240 580 -240 620 {
lab=vssa}
N -480 220 -320 220 {lab=vmeas_noise}
N -480 220 -480 280 {lab=vmeas_noise}
N -240 480 -240 520 {lab=vmeas_res}
N -480 340 -480 440 {lab=vssa}
N -480 120 -480 220 {lab=vmeas_noise}
C {devices/code.sym} -930 130 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.include /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice

* Parameters

.param xvdda = 1
.param xRvar = 10k
.csparam xRvar_var = 'xRvar'
.param xCvar = 1p
.csparam xCvar_var = 'xCvar'
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'

.temp 27

  
* vlogA instantiation
.model ideal_sw ideal_sw

.include tb_res_noise.save

* must use .save all for ac noise analysys
  .save all
  
  .control 
  
  pre_osdi ideal_sw.osdi
  
 * commercial temperature range
 set xTj = ( 0 10 20 30 40 50 60 70 )
 * industrial temperature range
 *set xTj = ( -40 -30 -20 -10 0 10 20 30 40 50 60 70 85 )
 * military temperature range
 *set xTj = ( -55 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 125 )
 * automotive temperature range
 *set xTj = ( -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 )
 *set xTj = ( 27 )
 
  foreach xTj_var $xTj

  let Tj_meas = $xTj_var

  echo temperature is \\"$&Tj_meas\\"

  set temp = $xTj_var

** 1. TRAN ANALYSIS ** 

  tran 1n $&xtsim_var
  *set filetype=ascii
  remzerovec
  write tb_res_noise.raw
 
 ** 2. TRAN MEASURES ** 
  
  meas tran vmeas_avg AVG vmeas_res
  meas tran imeas_avg AVG i(Vvdda_res)
  let rmeas = (vmeas_avg/imeas_avg)*-1
  echo -- 
  echo \\"$&Tj_meas\\" >> res_measures_T.txt
  echo \\"$&rmeas\\"
  echo \\"$&rmeas\\" >> res_measures_typ.txt
 echo -- 
  
** 3. AC NOISE ANALYSIS **   

  let xfmax = 1G

  noise v(vmeas_noise) Vvdda dec 10 10 $&xfmax 1
  print v(onoise_total)
  setplot noise1
  set filetype=binary
  remzerovec
  write tb_res_noise_density.raw
  let vnoise_op_int = sqrt(integ(onoise_spectrum*onoise_spectrum))

  let freq_density1 = 1k
  let freq_density2 = 10k
  let freq_density3 = 100k
  
  let nn = 0
  while frequency[nn] < $&freq_density1
  let nn = nn + 1
  end
  * define vectors of frequncies and values just above and below
  * selected frequeny
  let fnn = frequency[nn]
  let nn1 = nn + 1
  let fnn1 = frequency[nn1]
  let snn = onoise_spectrum[nn]
  let snn1 = onoise_spectrum[nn1]
  *print vector values
  echo -- 
  echo nn = \\"$&nn\\"  freq_density1 = \\"$&fnn\\"  noise_density1 = \\"$&snn\\"
  echo nn1 = \\"$&nn1\\"  freq_density1+ = \\"$&fnn1\\"  noise_density1+ = \\"$&snn1\\"
  *linear interpolation for exact frequency
  let newsnn = snn1 + (snn - snn1)/(fnn - fnn1)*($&freq_density1 - fnn1)
  echo  freq_density1 = \\"$&freq_density1\\"  noise_density1_interp = \\"$&newsnn\\"
  echo \\"$&newsnn\\" >> noise_ipr_1k.txt
  echo --  
  
  let nn = 0
  while frequency[nn] < $&freq_density2
  let nn = nn + 1
  end
  * define vectors of frequncies and values just above and below
  * selected frequeny
  let fnn = frequency[nn]
  let nn1 = nn + 1
  let fnn1 = frequency[nn1]
  let snn = onoise_spectrum[nn]
  let snn1 = onoise_spectrum[nn1]
  *print vector values
  echo -- 
  echo nn = \\"$&nn\\"  freq_density2 = \\"$&fnn\\"  noise_density2 = \\"$&snn\\"
  echo nn1 = \\"$&nn1\\"  freq_density2+ = \\"$&fnn1\\"  noise_density2+ = \\"$&snn1\\"
  *linear interpolation for exact frequency
  let newsnn = snn1 + (snn - snn1)/(fnn - fnn1)*($&freq_density2 - fnn1)
  echo  freq_density2 = \\"$&freq_density2\\"  noise_density2_interp = \\"$&newsnn\\"
  echo \\"$&newsnn\\" >> noise_ipr_10k.txt
  echo --  
  
  let nn = 0
  while frequency[nn] < $&freq_density3
  let nn = nn + 1
  end
  * define vectors of frequncies and values just above and below
  * selected frequeny
  let fnn = frequency[nn]
  let nn1 = nn + 1
  let fnn1 = frequency[nn1]
  let snn = onoise_spectrum[nn]
  let snn1 = onoise_spectrum[nn1]
  *print vector values
  echo -- 
  echo nn = \\"$&nn\\"  freq_density3 = \\"$&fnn\\"  noise_density3 = \\"$&snn\\"
  echo nn1 = \\"$&nn1\\"  freq_density3+ = \\"$&fnn1\\"  noise_density3+ = \\"$&snn1\\"
  *linear interpolation for exact frequency
  let newsnn = snn1 + (snn - snn1)/(fnn - fnn1)*($&freq_density3 - fnn1)
  echo  freq_density3 = \\"$&freq_density3\\"  noise_density1_interp = \\"$&newsnn\\"
  echo \\"$&newsnn\\" >> noise_ipr_100k.txt
  echo --  

  setplot noise2
  set filetype=ascii
  remzerovec
  write tb_res_integrated_noise.raw
  
** 4. AC NOISE MEASURES ** 

 echo -- 
 let Vn2 = 4*1.38e-23*($xTj_var+273.15)*($&xRvar_var/2)
 print Vn2
 echo -- 
 let Vn = sqrt(Vn2)
 print Vn
 echo --
 let BW = 1/(2*3.1416*($&xRvar_var/2)*$&xcvar_var)
 print BW
 echo --
 let ENBW = (3.1416/2)*$&BW
 print ENBW
 echo --
 let Vnrms = sqrt($&Vn2*$&ENBW)
 print Vnrms
 echo --

  end

  setplot
*quit 0
.endc


"}
C {vsource.sym} -740 170 0 0 {name=Vvssa value=0 savecurrent=false}
C {gnd.sym} -740 220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -740 130 1 0 {name=p8 sig_type=std_logic lab=vssa}
C {devices/vsource.sym} -660 170 0 0 {name=Vvdda value="xvdda ac 1"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -660 220 1 1 {name=p11 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -660 120 3 1 {name=p12 sig_type=std_logic lab=vdda

}
C {launcher.sym} 80 -200 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_res_noise.raw tran"


}
C {devices/lab_wire.sym} -480 0 3 1 {name=p2 sig_type=std_logic lab=vdda

}
C {devices/lab_wire.sym} -480 420 1 1 {name=p4 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -440 220 0 1 {name=p7 sig_type=std_logic lab=vmeas_noise

}
C {devices/capa.sym} -320 290 0 0 {name=C2
m=1
value='xCvar'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -320 340 1 1 {name=p9 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -440 480 0 1 {name=p5 sig_type=std_logic lab=vmeas_res

}
C {devices/vsource.sym} -480 550 0 0 {name=Vvdda_res value="xvdda"
format="@name @pinlist @value"}
C {devices/lab_wire.sym} -480 600 1 1 {name=p10 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -240 600 1 1 {name=p1 sig_type=std_logic lab=vssa

}
C {devices/launcher.sym} -860 360 0 0 {# Process corner sweep for tt,wcs,bcs
# Assumes stim file has set corner to tt
name=h3
descr="Process corners: res"
tclcommand="
set spicefile $netlist_dir/tb_res_noise.spice
xschem netlist
simulate
after 5000 ;# wait 1sec for ngspice to start and read netlist
# change to wcs corner
exec sed -i \{/^\\.lib/s/cornerRES.lib res_typ/cornerRES.lib res_wcs/\} $spicefile
exec sed -i \{s/res_measures_typ.txt/res_measures_wcs.txt/\} $spicefile
simulate
after 5000 ;# wait 1sec for ngspice to start and read netlist
# change to bcs corner
exec sed -i \{/^\\.lib/s/cornerRES.lib res_wcs/cornerRES.lib res_bcs/\} $spicefile
exec sed -i \{s/res_measures_wcs.txt/res_measures_bcs.txt/\} $spicefile
simulate
"
}
C {sg13g2_pr/rhigh.sym} -480 90 0 1 {name=R3
w=2e-6
l=140.961e-6
model=rhigh
body=vssa
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} -480 310 0 1 {name=R1
w=2e-6
l=140.961e-6
model=rhigh
body=vssa
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} -240 550 0 1 {name=R2
w=4e-6
l=140.961e-6
model=rhigh
body=vssa
spiceprefix=X
b=0
m=1
}
