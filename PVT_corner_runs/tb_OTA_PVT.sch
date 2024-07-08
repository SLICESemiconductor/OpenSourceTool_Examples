v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -420 -760 380 -360 {flags=graph
y1=0.98

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vinp
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
y2=1.015
rawfile=$netlist_dir/tb_OTA_PVT_tran.raw
sim_type=tran}
B 2 500 -400 1300 0 {flags=graph,unlocked


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


dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_OTA_PVT_ac2.raw
color="11 7 10 12 4 7 7 15 15 17 17 4 4 12 12 17 17 6 6 9 9 20 20 21 21 10 10 5 5 7 7 4 4 4 4 4"
node="ph(av)
ph(av)%tb_OTA_PVT_ac2_ff_125_1v7.raw
ph(av)%tb_OTA_PVT_ac2_ff_125_1v9.raw
ph(av)%tb_OTA_PVT_ac2_ff_n40_1v7.raw
ph(av)%tb_OTA_PVT_ac2_ff_n40_1v9.raw
ph(av)%tb_OTA_PVT_ac2_ss_125_1v7.raw
ph(av)%tb_OTA_PVT_ac2_ss_125_1v9.raw
ph(av)%tb_OTA_PVT_ac2_ss_n40_1v7.raw
ph(av)%tb_OTA_PVT_ac2_ss_n40_1v9.raw
ph(av)%tb_OTA_PVT_ac2_fs_125_1v7.raw
ph(av)%tb_OTA_PVT_ac2_fs_125_1v9.raw
ph(av)%tb_OTA_PVT_ac2_fs_n40_1v7.raw
ph(av)%tb_OTA_PVT_ac2_fs_n40_1v9.raw
ph(av)%tb_OTA_PVT_ac2_sf_125_1v7.raw
ph(av)%tb_OTA_PVT_ac2_sf_125_1v9.raw
ph(av)%tb_OTA_PVT_ac2_sf_n40_1v7.raw
ph(av)%tb_OTA_PVT_ac2_sf_n40_1v9.raw

\\" -45\\"
\\" -90\\"
\\" -180\\""
y1=-180
y2=-7.4
sim_type=ac}
B 2 500 -820 1300 -420 {flags=graph,unlocked
y1=-40
y2=29
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
node="\\"tt271v8;av db20()\\"
\\"ff1251v7;av db20()%tb_OTA_PVT_ac2_ff_125_1v7.raw\\"
\\"ff1251v9;av db20()%tb_OTA_PVT_ac2_ff_125_1v9.raw\\"
\\"ffn401v7;av db20()%tb_OTA_PVT_ac2_ff_n40_1v7.raw\\"
\\"ffn401v9;av db20()%tb_OTA_PVT_ac2_ff_n40_1v9.raw\\"
\\"ss1251v7;av db20()%tb_OTA_PVT_ac2_ss_125_1v7.raw\\"
\\"ss1251v9;av db20()%tb_OTA_PVT_ac2_ss_125_1v9.raw\\"
\\"ssn401v7;av db20()%tb_OTA_PVT_ac2_ss_n40_1v7.raw\\"
\\"ssn401v9;av db20()%tb_OTA_PVT_ac2_ss_n40_1v9.raw\\"
\\"fs1251v7;av db20()%tb_OTA_PVT_ac2_fs_125_1v7.raw\\"
\\"fs1251v9;av db20()%tb_OTA_PVT_ac2_fs_125_1v9.raw\\"
\\"fsn401v7;av db20()%tb_OTA_PVT_ac2_fs_n40_1v7.raw\\"
\\"fsn401v9;av db20()%tb_OTA_PVT_ac2_fs_n40_1v9.raw\\"
\\"sf1251v7;av db20()%tb_OTA_PVT_ac2_sf_125_1v7.raw\\"
\\"sf1251v9;av db20()%tb_OTA_PVT_ac2_sf_125_1v9.raw\\"
\\"sfn401v7;av db20()%tb_OTA_PVT_ac2_sf_n40_1v7.raw\\"
\\"sfn401v9;av db20()%tb_OTA_PVT_ac2_sf_n40_1v9.raw\\""
color="4 7 10 8 13 15 21 17 6 9 9 13 7 4 8 16 18"
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_OTA_PVT_ac2.raw
sim_type=ac
x2=11}
N -20 -200 180 -200 {
lab=vout}
N 180 -200 180 -100 {
lab=vout}
N 120 -100 180 -100 {
lab=vout}
N -200 -180 -200 -100 {
lab=vfb}
N -200 -180 -140 -180 {
lab=vfb}
N -200 -240 -200 -220 {
lab=ibias}
N -200 -220 -140 -220 {
lab=ibias}
N -200 -320 -200 -300 {
lab=vdda}
N -200 -320 -80 -320 {
lab=vdda}
N -80 -320 -80 -260 {
lab=vdda}
N -280 -320 -280 -180 {
lab=vdda}
N -280 -320 -200 -320 {
lab=vdda}
N -420 -200 -140 -200 {
lab=vinp}
N -420 -200 -420 -180 {
lab=vinp}
N -420 -20 -420 20 {
lab=vssa}
N -420 20 180 20 {
lab=vssa}
N 180 0 180 20 {
lab=vssa}
N 180 -100 180 -60 {
lab=vout}
N -420 -120 -420 -80 {
lab=#net1}
N -280 -120 -280 20 {
lab=vssa}
N -500 -20 -500 -0 {
lab=GND}
N -500 -120 -500 -80 {
lab=vssa}
N -80 -140 -80 20 {
lab=vssa}
N 80 -100 120 -100 {
lab=vout}
N -200 -100 -180 -100 {
lab=vfb}
N -180 -100 -20 -100 {
lab=vfb}
C {devices/vsource.sym} -280 -150 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {devices/isource.sym} -200 -270 0 0 {name=Iisnk value=xibias}
C {devices/capa.sym} 180 -30 0 0 {name=C2
m=1
value=\{xCload\}
footprint=1206
device="ceramic capacitor"}
C {OTA.sym} -80 -160 0 0 {name=xota
schematic=OTA.sch}
C {devices/vsource.sym} -420 -150 0 0 {name=Vstep value="pwl (0 0 \{xtsim/2\} 0 \{\{xtsim/2\}+xtrf\} \{xstep_en*10m\})"
format="@name @pinlist @value"}
C {devices/vsource.sym} -420 -50 0 0 {name=Vvinp value=xvinp
format="@name @pinlist @value"}
C {devices/vsource.sym} -500 -50 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -500 0 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -190 -220 0 1 {name=p3 sig_type=std_logic lab=ibias

}
C {devices/lab_wire.sym} -80 -320 0 1 {name=p1 sig_type=std_logic lab=vdda

}
C {devices/lab_wire.sym} 180 -200 0 1 {name=p2 sig_type=std_logic lab=vout

}
C {devices/lab_wire.sym} -240 -200 0 1 {name=p4 sig_type=std_logic lab=vinp

}
C {devices/lab_wire.sym} -180 -100 0 1 {name=p5 sig_type=std_logic lab=vfb

}
C {devices/lab_wire.sym} -500 -100 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -380 20 0 1 {name=p7 sig_type=std_logic lab=vssa

}
C {devices/loopgainprobe.sym} 80 -20 0 0 {name=xstb}
C {devices/code.sym} 290 -200 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ss
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice sf
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice fs

* Parameters
.param xvdda = 1.8
.param xvinp = 1
.param xibias = 2u
.param xCload = 2p
.param xgm_dp = 1e-3
.param xRin = 1/xgm_dp
.param xCout = 1p
.param xRout = 1e6
.param xtrf = 50p
* need to set this equal to xtsim in the .control statement
.param xtsim = 50u
*.param xtsim = 1m
.csparam xtsim_var = 'xtsim'
.param xstep_en = 1
.temp 27
*.set csnumprec=2


  .control

  *let xtsim_var = 50u
  *let xtsim_var = 1m
  save all
   echo $&xtsim_var
*.csparam xtsim_var = 50u
** 1. TRAN ANALYSIS ** 

  tran 1n $&xtsim_var
  *tran 1n xtsim_var
  remzerovec
  write tb_OTA_PVT_tran.raw
 
** 2. AC ANALYSIS ** 

  alter i.xstb.Ii acmag=0 
  alter v.xstb.Vi acmag=1 
    
  ac dec 10 1 100G
  remzerovec    
  write tb_OTA_PVT_ac1.raw
  
  alter i.xstb.Ii acmag=1 
  alter v.xstb.Vi acmag=0 
  ac dec 10 1 100G    
  * use this line if you want the phase response to start at 0deg (more conventional and directly corresponds to Franks derivation)
  * also the measures assume phase starts at 0deg
  let av = \{1/(1/(2*(ac1.i(v.xstb.Vi)*ac2.v(xstb.x)-ac1.v(xstb.x)*ac2.i(v.xstb.Vi))+ac1.v(xstb.x)+ac2.i(v.xstb.Vi))-1)\}
  remzerovec
  write tb_OTA_PVT_ac2.raw
  
  ** 3. MEASURES **

  * I am using octave to summarise all ac_measures files into a csv file which is then read by loffice. loffice (mostly!) rounds to 3 decimal
  * places which I can't seem to change. Therefore, ngspice needs to output to 3 decimal places in order for the user to be able to
  * find a measurement, shown in the loffice csv summary, in the original raw files (to determine corner run). If the numbers are
  * > 10 you need csnumprec = 5 (5 digits means 10 and 3 decimal places). If the numbers are < 10 set csmnumprec = 4 and if numbers
  * are > 100, set csmnumprec = 6. This is why before I write the measure to the output txt file I check if it is < 10 / >=10 / >= 100 
  * and set csmnumprec accordingly
  
  * 3.1 DC gain (Av_0):
  meas AC Av_0 FIND vdb(av) AT=1
  if $&Av_0 < 10
  set csnumprec=4
  end 
  if $&Av_0 >= 10
  set csnumprec=5
  end 
  if $&Av_0 >= 100
  set csnumprec=6
  end 
  echo \\"$&Av_0\\" > ac_measures.txt
  echo -- 
  
  * 3.2 Bandwidth (BW):
  let n45_rads = -45*(pi/180) 
  meas AC BW WHEN vp(av)=n45_rads CROSS=1
  let BW_kHz = BW/1e3
  if $&BW_kHz < 10
  set csnumprec=4
  end 
  if $&BW_kHz >= 10
  set csnumprec=5
  end 
  if $&BW_kHz >= 100
  set csnumprec=6
  end 
  echo \\"$&BW_kHz\\" >> ac_measures.txt
  echo --
  
  * 3.3 Av at BW (Av_BW):
  *I am leaving this in for infomation but typically dont use it
  *meas AC Av_BW FIND vdb(av) WHEN vp(av)=n45_rads CROSS=1
  *echo \\"$&Av_BW\\" >> ac_measures.txt
  *echo --
  
  * 3.4 Unity loop gain frequency (ULGF):
  meas AC ULGF WHEN vdb(av)=0
  let ULGF_MHz = ULGF/1e6
  if $&ULGF_MHz < 10
  set csnumprec=4
  end 
  if $&ULGF_MHz >= 10
  set csnumprec=5
  end 
  if $&ULGF_MHz >= 100
  set csnumprec=6
  end 
  echo \\"$&ULGF_MHz\\" >> ac_measures.txt
  echo --
  
  * 3.5 Phase margin (PM):
  meas AC ULGF_phi_rads FIND vp(av) WHEN vdb(av)=0 CROSS=1
  let ULGF_phi_deg = ULGF_phi_rads*(180/pi)
  let PM = 180+ULGF_phi_deg
  if $&PM < 10
  set csnumprec=4
  end 
  if $&PM >= 10
  set csnumprec=5
  end 
  if $&PM >= 100
  set csnumprec=6
  end 
  echo \\"$&PM\\" >> ac_measures.txt
  echo --
  
  * 3.6 Gain margin (GM):
  * putting in -179 since a purely 2nd-order system so doesnt ever achieve -180
  * will prob revisit this later and change to 180
  let n180_rads = -179*(pi/180)
  meas AC GM FIND vdb(av) WHEN vp(av)=n180_rads CROSS=1
  * Note: The no of significant digits increases by 1 to include the - sign
  if $&GM < 10
  set csnumprec=5
  end 
  if $&GM >= 10
  set csnumprec=6
  end 
  if $&GM >= 100
  set csnumprec=7
  end 
  echo \\"$&GM\\" >> ac_measures.txt
  echo --

  setplot
 
quit 0
.endc


"}
C {devices/launcher.sym} 380 100 0 0 {# Temp corner sweep for Tmin = -40C, Tmax = 125C, Trt = 27C
# Assumes stim file has set temp to 27C
name=h1
descr="Temp corner group"
tclcommand="
set spicefile $netlist_dir/tb_OTA_PVT.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# set T = 125C
exec sed -i \{/^\\.temp/s/27/125/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran.raw/tb_OTA_PVT_tran_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1.raw/tb_OTA_PVT_ac1_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2.raw/tb_OTA_PVT_ac2_125.raw/\} $spicefile
exec sed -i \{s/ac_measures.txt/ac_measures_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# set T = -40C
exec sed -i \{/^\\.temp/s/125/-40/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_125.raw/tb_OTA_PVT_tran_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_125.raw/tb_OTA_PVT_ac1_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_125.raw/tb_OTA_PVT_ac2_n40.raw/\} $spicefile
exec sed -i \{s/ac_measures_125.txt/ac_measures_n40.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} 380 20 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
name=h2
descr="Process corner group"
tclcommand="
set spicefile $netlist_dir/tb_OTA_PVT.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ff corner
exec sed -i \{/^\\.lib/s/tt/ff/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran.raw/tb_OTA_PVT_tran_ff.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1.raw/tb_OTA_PVT_ac1_ff.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2.raw/tb_OTA_PVT_ac2_ff.raw/\} $spicefile
exec sed -i \{s/ac_measures.txt/ac_measures_ff.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ff.raw/tb_OTA_PVT_tran_ss.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ff.raw/tb_OTA_PVT_ac1_ss.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ff.raw/tb_OTA_PVT_ac2_ss.raw/\} $spicefile
exec sed -i \{s/ac_measures_ff.txt/ac_measures_ss.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss/sf/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ss.raw/tb_OTA_PVT_tran_sf.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ss.raw/tb_OTA_PVT_ac1_sf.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ss.raw/tb_OTA_PVT_ac2_sf.raw/\} $spicefile
exec sed -i \{s/ac_measures_ss.txt/ac_measures_sf.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf/fs/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_sf.raw/tb_OTA_PVT_tran_fs.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_sf.raw/tb_OTA_PVT_ac1_fs.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_sf.raw/tb_OTA_PVT_ac2_fs.raw/\} $spicefile
exec sed -i \{s/ac_measures_sf.txt/ac_measures_fs.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} 380 140 0 0 {# Temp corner sweep for Tmin = -40C, Tmax = 125C, Trt = 27C
# Assumes stim file has set temp to 27C 
# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
name=h3
descr="Process / temp corner group"
tclcommand="
set spicefile $netlist_dir/tb_OTA_PVT.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist

################## change to n40 corner ################################
exec sed -i \{/^\\.temp/s/27/-40/\} $spicefile

# change to ff corner
exec sed -i \{/^\\.lib/s/tt/ff/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran.raw/tb_OTA_PVT_tran_ff_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1.raw/tb_OTA_PVT_ac1_ff_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2.raw/tb_OTA_PVT_ac2_ff_n40.raw/\} $spicefile
exec sed -i \{s/ac_measures.txt/ac_measures_ff_n40.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ff_n40.raw/tb_OTA_PVT_tran_ss_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ff_n40.raw/tb_OTA_PVT_ac1_ss_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ff_n40.raw/tb_OTA_PVT_ac2_ss_n40.raw/\} $spicefile
exec sed -i \{s/ac_measures_ff_n40.txt/ac_measures_ss_n40.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss/sf/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ss_n40.raw/tb_OTA_PVT_tran_sf_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ss_n40.raw/tb_OTA_PVT_ac1_sf_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ss_n40.raw/tb_OTA_PVT_ac2_sf_n40.raw/\} $spicefile
exec sed -i \{s/ac_measures_ss_n40.txt/ac_measures_sf_n40.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf/fs/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_sf_n40.raw/tb_OTA_PVT_tran_fs_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_sf_n40.raw/tb_OTA_PVT_ac1_fs_n40.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_sf_n40.raw/tb_OTA_PVT_ac2_fs_n40.raw/\} $spicefile
exec sed -i \{s/ac_measures_sf_n40.txt/ac_measures_fs_n40.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist

################## change to 125 corner ################################
exec sed -i \{/^\\.temp/s/-40/125/\} $spicefile

# change to ff corner
exec sed -i \{/^\\.lib/s/fs/ff/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_fs_n40.raw/tb_OTA_PVT_tran_ff_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_fs_n40.raw/tb_OTA_PVT_ac1_ff_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_fs_n40.raw/tb_OTA_PVT_ac2_ff_125.raw/\} $spicefile
exec sed -i \{s/ac_measures_fs_n40.txt/ac_measures_ff_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ff_125.raw/tb_OTA_PVT_tran_ss_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ff_125.raw/tb_OTA_PVT_ac1_ss_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ff_125.raw/tb_OTA_PVT_ac2_ss_125.raw/\} $spicefile
exec sed -i \{s/ac_measures_ff_125.txt/ac_measures_ss_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss/sf/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ss_125.raw/tb_OTA_PVT_tran_sf_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ss_125.raw/tb_OTA_PVT_ac1_sf_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ss_125.raw/tb_OTA_PVT_ac2_sf_125.raw/\} $spicefile
exec sed -i \{s/ac_measures_ss_125.txt/ac_measures_sf_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf/fs/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_sf_125.raw/tb_OTA_PVT_tran_fs_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_sf_125.raw/tb_OTA_PVT_ac1_fs_125.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_sf_125.raw/tb_OTA_PVT_ac2_fs_125.raw/\} $spicefile
exec sed -i \{s/ac_measures_sf_125.txt/ac_measures_fs_125.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} 380 60 0 0 {# Supply voltage corner sweep for vdda_min = 1.7, vdda_max = 1.9, vdda_typ = 1.8
# Assumes stim file has set vdda to 1.8
name=h4
descr="Supply voltage corner group"
tclcommand="
set spicefile $netlist_dir/tb_OTA_PVT.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# set vdda = vdda_min
exec sed -i \{/^\\.param xvdda/s/1.8/1.7/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran.raw/tb_OTA_PVT_tran_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1.raw/tb_OTA_PVT_ac1_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2.raw/tb_OTA_PVT_ac2_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures.txt/ac_measures_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# set vdda = vdda_max
exec sed -i \{/^\\.param xvdda/s/1.7/1.9/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_1v7.raw/tb_OTA_PVT_tran_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_1v7.raw/tb_OTA_PVT_ac1_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_1v7.raw/tb_OTA_PVT_ac2_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_1v7.txt/ac_measures_1v9.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} 380 180 0 0 {# Temp corner sweep for Tmin = -40C, Tmax = 125C, Trt = 27C
# Assumes stim file has set temp to 27C 
# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
# Supply voltage corner sweep for vdda_min = 1.7, vdda_max = 1.9, vdda_typ = 1.8
# Assumes stim file has set vdda to 1.8
name=h5
descr="Process / supply voltage / temp corner group"
tclcommand="
set spicefile $netlist_dir/tb_OTA_PVT.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist

################## change to vdda_min corner ###########################
exec sed -i \{/^\\.param xvdda/s/1.8/1.7/\} $spicefile

################## change to n40 corner ################################
exec sed -i \{/^\\.temp/s/27/-40/\} $spicefile

# change to ff corner
exec sed -i \{/^\\.lib/s/tt/ff/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran.raw/tb_OTA_PVT_tran_ff_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1.raw/tb_OTA_PVT_ac1_ff_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2.raw/tb_OTA_PVT_ac2_ff_n40_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures.txt/ac_measures_ff_n40_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ff_n40_1v7.raw/tb_OTA_PVT_tran_ss_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ff_n40_1v7.raw/tb_OTA_PVT_ac1_ss_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ff_n40_1v7.raw/tb_OTA_PVT_ac2_ss_n40_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures_ff_n40_1v7.txt/ac_measures_ss_n40_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss/sf/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ss_n40_1v7.raw/tb_OTA_PVT_tran_sf_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ss_n40_1v7.raw/tb_OTA_PVT_ac1_sf_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ss_n40_1v7.raw/tb_OTA_PVT_ac2_sf_n40_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures_ss_n40_1v7.txt/ac_measures_sf_n40_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf/fs/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_sf_n40_1v7.raw/tb_OTA_PVT_tran_fs_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_sf_n40_1v7.raw/tb_OTA_PVT_ac1_fs_n40_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_sf_n40_1v7.raw/tb_OTA_PVT_ac2_fs_n40_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures_sf_n40_1v7.txt/ac_measures_fs_n40_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist

################## change to 125 corner ################################
exec sed -i \{/^\\.temp/s/-40/125/\} $spicefile

# change to ff corner
exec sed -i \{/^\\.lib/s/fs/ff/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_fs_n40_1v7.raw/tb_OTA_PVT_tran_ff_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_fs_n40_1v7.raw/tb_OTA_PVT_ac1_ff_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_fs_n40_1v7.raw/tb_OTA_PVT_ac2_ff_125_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures_fs_n40_1v7.txt/ac_measures_ff_125_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ff_125_1v7.raw/tb_OTA_PVT_tran_ss_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ff_125_1v7.raw/tb_OTA_PVT_ac1_ss_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ff_125_1v7.raw/tb_OTA_PVT_ac2_ss_125_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures_ff_125_1v7.txt/ac_measures_ss_125_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss/sf/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ss_125_1v7.raw/tb_OTA_PVT_tran_sf_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ss_125_1v7.raw/tb_OTA_PVT_ac1_sf_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ss_125_1v7.raw/tb_OTA_PVT_ac2_sf_125_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures_ss_125_1v7.txt/ac_measures_sf_125_1v7.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf/fs/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_sf_125_1v7.raw/tb_OTA_PVT_tran_fs_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_sf_125_1v7.raw/tb_OTA_PVT_ac1_fs_125_1v7.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_sf_125_1v7.raw/tb_OTA_PVT_ac2_fs_125_1v7.raw/\} $spicefile
exec sed -i \{s/ac_measures_sf_125_1v7.txt/ac_measures_fs_125_1v7.txt/\} $spicefile
simulate

after 1000 ;# wait 1sec for ngspice to start and read netlist

################## change to vdda_max corner ###########################
exec sed -i \{/^\\.param xvdda/s/1.7/1.9/\} $spicefile

################## change to n40 corner ################################
exec sed -i \{/^\\.temp/s/125/-40/\} $spicefile

# change to ff corner
exec sed -i \{/^\\.lib/s/fs/ff/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_fs_125_1v7.raw/tb_OTA_PVT_tran_ff_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_fs_125_1v7.raw/tb_OTA_PVT_ac1_ff_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_fs_125_1v7.raw/tb_OTA_PVT_ac2_ff_n40_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_fs_125_1v7.txt/ac_measures_ff_n40_1v9.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ff_n40_1v9.raw/tb_OTA_PVT_tran_ss_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ff_n40_1v9.raw/tb_OTA_PVT_ac1_ss_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ff_n40_1v9.raw/tb_OTA_PVT_ac2_ss_n40_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_ff_n40_1v9.txt/ac_measures_ss_n40_1v9.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss/sf/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ss_n40_1v9.raw/tb_OTA_PVT_tran_sf_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ss_n40_1v9.raw/tb_OTA_PVT_ac1_sf_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ss_n40_1v9.raw/tb_OTA_PVT_ac2_sf_n40_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_ss_n40_1v9.txt/ac_measures_sf_n40_1v9.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf/fs/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_sf_n40_1v9.raw/tb_OTA_PVT_tran_fs_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_sf_n40_1v9.raw/tb_OTA_PVT_ac1_fs_n40_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_sf_n40_1v9.raw/tb_OTA_PVT_ac2_fs_n40_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_sf_n40_1v9.txt/ac_measures_fs_n40_1v9.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist

################## change to 125 corner ################################
exec sed -i \{/^\\.temp/s/-40/125/\} $spicefile

# change to ff corner
exec sed -i \{/^\\.lib/s/fs/ff/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_fs_n40_1v9.raw/tb_OTA_PVT_tran_ff_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_fs_n40_1v9.raw/tb_OTA_PVT_ac1_ff_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_fs_n40_1v9.raw/tb_OTA_PVT_ac2_ff_125_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_fs_n40_1v9.txt/ac_measures_ff_125_1v9.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ff_125_1v9.raw/tb_OTA_PVT_tran_ss_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ff_125_1v9.raw/tb_OTA_PVT_ac1_ss_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ff_125_1v9.raw/tb_OTA_PVT_ac2_ss_125_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_ff_125_1v9.txt/ac_measures_ss_125_1v9.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss/sf/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_ss_125_1v9.raw/tb_OTA_PVT_tran_sf_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_ss_125_1v9.raw/tb_OTA_PVT_ac1_sf_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_ss_125_1v9.raw/tb_OTA_PVT_ac2_sf_125_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_ss_125_1v9.txt/ac_measures_sf_125_1v9.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf/fs/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_tran_sf_125_1v9.raw/tb_OTA_PVT_tran_fs_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac1_sf_125_1v9.raw/tb_OTA_PVT_ac1_fs_125_1v9.raw/\} $spicefile
exec sed -i \{s/tb_OTA_PVT_ac2_sf_125_1v9.raw/tb_OTA_PVT_ac2_fs_125_1v9.raw/\} $spicefile
exec sed -i \{s/ac_measures_sf_125_1v9.txt/ac_measures_fs_125_1v9.txt/\} $spicefile
simulate
"
}
