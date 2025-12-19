v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -1160 -260 160 280 {}
B 2 260 -120 780 280 {flags=graph,unlocked
y1=0.19
y2=0.2
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
mode=HistoH
sweep=freq

linewidth_mult=6
x2=19
autoload=1
sim_type=distrib
color=4
node=vth}
B 2 820 -120 1340 280 {flags=graph,unlocked
y1=0
y2=34
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.197

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
mode=HistoV
sweep=vth

linewidth_mult=6
x2=0.2
autoload=1
sim_type=distrib
color=4
node=freq
rawfile=distrib}
T {HV PMOS} -1000 -190 0 0 0.4 0.4 {}
T {LV PMOS} -710 -190 0 0 0.4 0.4 {}
T {HV NMOS} -400 -190 0 0 0.4 0.4 {}
T {LV NMOS} -100 -190 0 0 0.4 0.4 {}
T {DUTs} -570 -240 0 0 0.6 0.6 {}
T {These process corner launchers are placeholders as I dont
use them for Avt analysis since mc is run for various 
dimensions. Running mc across process is only practical 
for one dimension (w.r.t changing file names etc.). Should
I need this tb for that and want mc across process data, I
will keep these here. However, they will need to be edited
according to the file names I want. } -660 -720 0 0 0.4 0.4 {}
T {tcleval(rms=[to_eng $rms]
mean=[to_eng $mean])} 390 -220 0 0 0.6 0.6 {floater=yes layer=4}
N -900 -340 -900 -320 {lab=GND}
N -900 -440 -900 -400 {lab=vssa}
N -280 -350 -280 -310 {lab=vssa}
N -280 -450 -280 -410 {lab=vg_nmos_lv}
N -200 -350 -200 -310 {lab=vssa}
N -200 -450 -200 -410 {lab=vd_nmos_lv}
N -60 -10 -60 30 {lab=vssa}
N -140 -40 -100 -40 {lab=vg_nmos_lv}
N -60 -110 -60 -70 {lab=vd_nmos_lv}
N -60 -40 -20 -40 {lab=vssa}
N -360 -10 -360 30 {lab=vssa}
N -440 -40 -400 -40 {lab=vg_nmos_hv}
N -360 -110 -360 -70 {lab=vd_nmos_hv}
N -360 -40 -320 -40 {lab=vssa}
N -100 -350 -100 -310 {lab=vssa}
N -100 -450 -100 -410 {lab=vdda_lv}
N 0 -350 0 -310 {lab=vssa}
N 0 -450 0 -410 {lab=vdda_hv}
N -660 -110 -660 -70 {lab=vdda_lv}
N -720 -340 -720 -300 {lab=vssa}
N -720 -440 -720 -400 {lab=vg_pmos_lv}
N -640 -340 -640 -300 {lab=vssa}
N -640 -440 -640 -400 {lab=vd_pmos_lv}
N -740 -40 -700 -40 {lab=vg_pmos_lv}
N -660 -10 -660 30 {lab=vd_pmos_lv}
N -540 -340 -540 -300 {lab=vssa}
N -540 -440 -540 -400 {lab=vg_pmos_hv}
N -460 -340 -460 -300 {lab=vssa}
N -460 -440 -460 -400 {lab=vd_pmos_hv}
N -960 -110 -960 -70 {lab=vdda_hv}
N -1040 -40 -1000 -40 {lab=vg_pmos_hv}
N -960 -10 -960 30 {lab=vd_pmos_hv}
N -660 -40 -620 -40 {lab=vdda_lv}
N -960 -40 -920 -40 {lab=vdda_hv}
N -800 -340 -800 -300 {lab=vssa}
N -800 -440 -800 -400 {lab=vg_nmos_hv}
N -360 -350 -360 -310 {lab=vssa}
N -360 -450 -360 -410 {lab=vd_nmos_hv}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 -40 0 0 {name=M1
l=2u
w=0.3125u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} -900 -370 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -900 -320 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -900 -410 1 0 {name=p1 sig_type=std_logic lab=vssa}
C {vsource.sym} -280 -380 0 0 {name=Vvg_nmos_lv value="xvg_nmos_lv"
format="@name @pinlist @value"}
C {lab_wire.sym} -280 -340 3 0 {name=p2 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -280 -420 1 0 {name=p3 sig_type=std_logic lab=vg_nmos_lv}
C {vsource.sym} -200 -380 0 0 {name=Vvd_nmos_lv value="xvd_nmos_lv"
format="@name @pinlist @value"}
C {lab_wire.sym} -200 -340 3 0 {name=p4 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -200 -420 1 0 {name=p5 sig_type=std_logic lab=vd_nmos_lv}
C {lab_wire.sym} -60 0 3 0 {name=p6 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -110 -40 0 0 {name=p7 sig_type=std_logic lab=vg_nmos_lv}
C {lab_wire.sym} -60 -80 1 0 {name=p8 sig_type=std_logic lab=vd_nmos_lv}
C {lab_wire.sym} -50 -40 0 1 {name=p9 sig_type=std_logic lab=vssa}
C {devices/code.sym} -1080 -410 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt_mismatch
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt_mismatch
*.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt_stat
*.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt_stat
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
.include /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/diodes.lib


* Parameters
.param xvg_nmos_lv = 0.4
.param xvd_nmos_lv = 0.35
.param xvg_nmos_hv = 0.79
.param xvd_nmos_hv = 0.35
.param xvdda_hv = 3.3
.csparam xvdda_hv_var = 'xvdda_hv'
.param xvdda_lv = 1.65
.csparam xvdda_lv_var = 'xvdda_lv'
.param xvg_pmos_lv = 1.1
.param xvg_pmos_hv = 2.414
.param xvd_pmos_lv = 1.3
.param xvd_pmos_hv = 2.95
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'
.param xstep_en = 1
.temp 27

  
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  
  .include tb_vth_mc_ihp.save

  .save v(vd_nmos) v(vg_nmos)
  .save @n.xm1.nsg13_lv_nmos[ids] @n.xm2.nsg13_hv_nmos[ids] @n.xm3.nsg13_lv_pmos[ids] @n.xm4.nsg13_hv_pmos[ids]  
  
  .control  
  
    let run = 1

    dowhile run <= 100
    reset
  
** 1. DCOP ANALYSIS ** 

  op

  let vth_meas_nmoslv = @n.xm1.nsg13_lv_nmos[vth]
  echo \\"$&vth_meas_nmoslv\\" >> vth_measures_nmoslv_tt_mc.txt
  let vth_meas_nmoshv = @n.xm2.nsg13_hv_nmos[vth]
  echo \\"$&vth_meas_nmoshv\\" >> vth_measures_nmoshv_tt_mc.txt
  let vth_meas_pmoslv = @n.xm3.nsg13_lv_pmos[vth]
  echo \\"$&vth_meas_pmoslv\\" >> vth_measures_pmoslv_tt_mc.txt
  let vth_meas_pmoshv = @n.xm4.nsg13_hv_pmos[vth]
  echo \\"$&vth_meas_pmoshv\\" >> vth_measures_pmoshv_tt_mc.txt
 
    remzerovec
    set filetype=binary
    ** first write deletes existing file
    write tb_vth_mc_ihp.raw
    ** set appendwrite appends following writes to existing raw file
    set appendwrite
    let run = run+1

    end

  setplot
 
quit 0
.endc


"}
C {sg13g2_pr/annotate_fet_params.sym} -110 60 0 0 {name=annot1 ref=M1}
C {lab_wire.sym} -360 0 3 0 {name=p10 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -410 -40 0 0 {name=p11 sig_type=std_logic lab=vg_nmos_hv}
C {lab_wire.sym} -360 -80 1 0 {name=p12 sig_type=std_logic lab=vd_nmos_hv}
C {lab_wire.sym} -350 -40 0 1 {name=p13 sig_type=std_logic lab=vssa}
C {sg13g2_pr/sg13_hv_nmos.sym} -380 -40 0 0 {name=M2
l=2u
w=0.3125u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/annotate_fet_params.sym} -410 70 0 0 {name=annot2 ref=M2}
C {vsource.sym} -100 -380 0 0 {name=Vvdda_lv value="xvdda_lv"
format="@name @pinlist @value"}
C {lab_wire.sym} -100 -340 3 0 {name=p14 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -100 -420 1 0 {name=p15 sig_type=std_logic lab=vdda_lv}
C {vsource.sym} 0 -380 0 0 {name=Vvdda_hv value="xvdda_hv"
format="@name @pinlist @value"}
C {lab_wire.sym} 0 -340 3 0 {name=p16 sig_type=std_logic lab=vssa}
C {lab_wire.sym} 0 -420 1 0 {name=p17 sig_type=std_logic lab=vdda_hv}
C {sg13g2_pr/sg13_lv_pmos.sym} -680 -40 0 0 {name=M3
l=2u
w=0.3125u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} -660 -80 1 0 {name=p18 sig_type=std_logic lab=vdda_lv}
C {vsource.sym} -720 -370 0 0 {name=Vvg_pmos_lv value="xvg_pmos_lv"
format="@name @pinlist @value"}
C {lab_wire.sym} -720 -330 3 0 {name=p19 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -720 -410 1 0 {name=p20 sig_type=std_logic lab=vg_pmos_lv}
C {vsource.sym} -640 -370 0 0 {name=Vvd_pmos_lv value="xvd_pmos_lv"
format="@name @pinlist @value"}
C {lab_wire.sym} -640 -330 3 0 {name=p21 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -640 -410 1 0 {name=p22 sig_type=std_logic lab=vd_pmos_lv}
C {lab_wire.sym} -710 -40 0 0 {name=p23 sig_type=std_logic lab=vg_pmos_lv}
C {lab_wire.sym} -660 0 3 0 {name=p24 sig_type=std_logic lab=vd_pmos_lv}
C {vsource.sym} -540 -370 0 0 {name=Vvg_pmos_hv value="xvg_pmos_hv"
format="@name @pinlist @value"}
C {lab_wire.sym} -540 -330 3 0 {name=p28 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -540 -410 1 0 {name=p29 sig_type=std_logic lab=vg_pmos_hv}
C {vsource.sym} -460 -370 0 0 {name=Vvd_pmos_hv value="xvd_pmos_hv"
format="@name @pinlist @value"}
C {lab_wire.sym} -460 -330 3 0 {name=p30 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -460 -410 1 0 {name=p31 sig_type=std_logic lab=vd_pmos_hv}
C {lab_wire.sym} -960 -80 1 0 {name=p25 sig_type=std_logic lab=vdda_hv}
C {lab_wire.sym} -1010 -40 0 0 {name=p26 sig_type=std_logic lab=vg_pmos_hv}
C {lab_wire.sym} -960 0 3 0 {name=p27 sig_type=std_logic lab=vd_pmos_hv}
C {sg13g2_pr/sg13_hv_pmos.sym} -980 -40 0 0 {name=M4
l=2u
w=0.3125u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} -650 -40 0 1 {name=p32 sig_type=std_logic lab=vdda_lv}
C {lab_wire.sym} -950 -40 0 1 {name=p33 sig_type=std_logic lab=vdda_hv}
C {sg13g2_pr/annotate_fet_params.sym} -690 120 0 0 {name=annot3 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} -990 110 0 0 {name=annot4 ref=M4}
C {vsource.sym} -800 -370 0 0 {name=Vvg_nmos_hv value="xvg_nmos_hv"
format="@name @pinlist @value"}
C {lab_wire.sym} -800 -330 3 0 {name=p34 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -800 -410 1 0 {name=p35 sig_type=std_logic lab=vg_nmos_hv}
C {vsource.sym} -360 -380 0 0 {name=Vvd_nmos_hv value="xvd_nmos_hv"
format="@name @pinlist @value"}
C {lab_wire.sym} -360 -340 3 0 {name=p36 sig_type=std_logic lab=vssa}
C {lab_wire.sym} -360 -420 1 0 {name=p37 sig_type=std_logic lab=vd_nmos_hv}
C {devices/launcher.sym} -1010 -700 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
name=h5
descr="Process corners: mos lv"
tclcommand="
set spicefile $netlist_dir/tb_vth_ihp.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ff corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_tt/cornerMOSlv.lib mos_ff/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_tt.txt/vth_measures_nmoslv_ff.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_tt.txt/vth_measures_pmoslv_ff.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_ff/cornerMOSlv.lib mos_ss/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_ff.txt/vth_measures_nmoslv_ss.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_ff.txt/vth_measures_pmoslv_ss.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_ss/cornerMOSlv.lib mos_sf/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_ss.txt/vth_measures_nmoslv_sf.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_ss.txt/vth_measures_pmoslv_sf.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_sf/cornerMOSlv.lib mos_fs/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_sf.txt/vth_measures_nmoslv_fs.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_sf.txt/vth_measures_pmoslv_fs.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} -1010 -640 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
name=h6
descr="Process corners: mos hv"
tclcommand="
set spicefile $netlist_dir/tb_vth_ihp.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ff corner
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_tt/cornerMOShv.lib mos_ff/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_tt.txt/vth_measures_nmoshv_ff.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_tt.txt/vth_measures_pmoshv_ff.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_ff/cornerMOShv.lib mos_ss/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_ff.txt/vth_measures_nmoshv_ss.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_ff.txt/vth_measures_pmoshv_ss.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_ss/cornerMOShv.lib mos_sf/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_ss.txt/vth_measures_nmoshv_sf.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_ss.txt/vth_measures_pmoshv_sf.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_sf/cornerMOShv.lib mos_fs/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_sf.txt/vth_measures_nmoshv_fs.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_sf.txt/vth_measures_pmoshv_fs.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} -1010 -570 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
name=h7
descr="Process corners: mos lv/hv"
tclcommand="
set spicefile $netlist_dir/tb_vth_ihp.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ff corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_tt/cornerMOSlv.lib mos_ff/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_tt.txt/vth_measures_nmoslv_ff.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_tt.txt/vth_measures_pmoslv_ff.txt/\} $spicefile
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_tt/cornerMOShv.lib mos_ff/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_tt.txt/vth_measures_nmoshv_ff.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_tt.txt/vth_measures_pmoshv_ff.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_ff/cornerMOSlv.lib mos_ss/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_ff.txt/vth_measures_nmoslv_ss.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_ff.txt/vth_measures_pmoslv_ss.txt/\} $spicefile
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_ff/cornerMOShv.lib mos_ss/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_ff.txt/vth_measures_nmoshv_ss.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_ff.txt/vth_measures_pmoshv_ss.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_ss/cornerMOSlv.lib mos_sf/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_ss.txt/vth_measures_nmoslv_sf.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_ss.txt/vth_measures_pmoslv_sf.txt/\} $spicefile
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_ss/cornerMOShv.lib mos_sf/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_ss.txt/vth_measures_nmoshv_sf.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_ss.txt/vth_measures_pmoshv_sf.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/cornerMOSlv.lib mos_sf/cornerMOSlv.lib mos_fs/\} $spicefile
exec sed -i \{s/vth_measures_nmoslv_sf.txt/vth_measures_nmoslv_fs.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoslv_sf.txt/vth_measures_pmoslv_fs.txt/\} $spicefile
exec sed -i \{/^\\.lib/s/cornerMOShv.lib mos_sf/cornerMOShv.lib mos_fs/\} $spicefile
exec sed -i \{s/vth_measures_nmoshv_sf.txt/vth_measures_nmoshv_fs.txt/\} $spicefile
exec sed -i \{s/vth_measures_pmoshv_sf.txt/vth_measures_pmoshv_fs.txt/\} $spicefile
simulate
"

}
C {devices/launcher.sym} 320 -260 0 0 {name=h8
descr="load vth_nmoslv_hist" 
tclcommand="
xschem raw_read $netlist_dir/tb_vth_mc_ihp.raw

proc mean \{\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm1.nsg13_lv_nmos\\\\[vth\\\\] -1] \{
    set sum [expr \{$sum + $i\}]
  \}
  set mean [expr \{$sum / $points\}]
  return  $mean
\}

proc variance \{mean\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm1.nsg13_lv_nmos\\\\[vth\\\\] -1] \{
    set diff_sq [expr \{($i - $mean) ** 2\}]
    set sum [expr \{$sum + $diff_sq\}]
  \}
  set variance [expr \{$sum / ($points - 1) \}] ;# use points - 1 for unbiased estimator
  return  $variance
\}


proc get_histo \{var mean min max step\} \{
  puts var=$var
  xschem raw switch 0
  proc xround \{a size\} \{ return [expr \{round($a/$size) * $size\}]\}
  #### get rounded data
  catch \{unset freq\}
  foreach v1 [xschem raw values $var -1] \{
    set v1 [xround $v1 $step]
    puts \\"v1=$v1\\"
    if \{![info exists freq($v1)]\} \{ set freq($v1) 1\} else \{incr freq($v1)\}
  \}
  #### create histogram raw data in memory
  xschem raw new distrib distrib vth $min $max $step
  xschem raw add freq
  set j 0
  for \{set i $min\} \{$i <= $max\} \{set i [expr \{$i + $step\}] \} \{
    set ii  [xround $i $step]
    puts \\"ii=$ii\\"
    set v1 0
    if \{[info exists freq($ii)]\} \{ set v1 $freq($ii) \}
    xschem raw set freq $j $v1
    incr j
  \}
\}

set mean [mean]
set variance [variance $mean]
set rms [expr \{sqrt($variance)\}]

get_histo @n.xm1.nsg13_lv_nmos\\\\[vth\\\\] 198e-3 197e-3 200e-3 0.25e-3
xschem reset_caches
xschem redraw
"
}
C {devices/launcher.sym} 320 -300 0 0 {name=h1
descr="load vth_nmoshv_hist" 
tclcommand="
xschem raw_read $netlist_dir/tb_vth_mc_ihp.raw

proc mean \{\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm2.nsg13_hv_nmos\\\\[vth\\\\] -1] \{
    set sum [expr \{$sum + $i\}]
  \}
  set mean [expr \{$sum / $points\}]
  return  $mean
\}

proc variance \{mean\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm2.nsg13_hv_nmos\\\\[vth\\\\] -1] \{
    set diff_sq [expr \{($i - $mean) ** 2\}]
    set sum [expr \{$sum + $diff_sq\}]
  \}
  set variance [expr \{$sum / ($points - 1) \}] ;# use points - 1 for unbiased estimator
  return  $variance
\}


proc get_histo \{var mean min max step\} \{
  puts var=$var
  xschem raw switch 0
  proc xround \{a size\} \{ return [expr \{round($a/$size) * $size\}]\}
  #### get rounded data
  catch \{unset freq\}
  foreach v1 [xschem raw values $var -1] \{
    set v1 [xround $v1 $step]
    puts \\"v1=$v1\\"
    if \{![info exists freq($v1)]\} \{ set freq($v1) 1\} else \{incr freq($v1)\}
  \}
  #### create histogram raw data in memory
  xschem raw new distrib distrib vth $min $max $step
  xschem raw add freq
  set j 0
  for \{set i $min\} \{$i <= $max\} \{set i [expr \{$i + $step\}] \} \{
    set ii  [xround $i $step]
    puts \\"ii=$ii\\"
    set v1 0
    if \{[info exists freq($ii)]\} \{ set v1 $freq($ii) \}
    xschem raw set freq $j $v1
    incr j
  \}
\}

set mean [mean]
set variance [variance $mean]
set rms [expr \{sqrt($variance)\}]

get_histo @n.xm2.nsg13_hv_nmos\\\\[vth\\\\] 587e-3 584e-3 590e-3 0.5e-3
xschem reset_caches
xschem redraw
"
}
C {devices/launcher.sym} 320 -340 0 0 {name=h2
descr="load vth_pmoslv_hist" 
tclcommand="
xschem raw_read $netlist_dir/tb_vth_mc_ihp.raw

proc mean \{\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm3.nsg13_lv_pmos\\\\[vth\\\\] -1] \{
    set sum [expr \{$sum + $i\}]
  \}
  set mean [expr \{$sum / $points\}]
  return  $mean
\}

proc variance \{mean\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm3.nsg13_lv_pmos\\\\[vth\\\\] -1] \{
    set diff_sq [expr \{($i - $mean) ** 2\}]
    set sum [expr \{$sum + $diff_sq\}]
  \}
  set variance [expr \{$sum / ($points - 1) \}] ;# use points - 1 for unbiased estimator
  return  $variance
\}


proc get_histo \{var mean min max step\} \{
  puts var=$var
  xschem raw switch 0
  proc xround \{a size\} \{ return [expr \{round($a/$size) * $size\}]\}
  #### get rounded data
  catch \{unset freq\}
  foreach v1 [xschem raw values $var -1] \{
    set v1 [xround $v1 $step]
    puts \\"v1=$v1\\"
    if \{![info exists freq($v1)]\} \{ set freq($v1) 1\} else \{incr freq($v1)\}
  \}
  #### create histogram raw data in memory
  xschem raw new distrib distrib vth $min $max $step
  xschem raw add freq
  set j 0
  for \{set i $min\} \{$i <= $max\} \{set i [expr \{$i + $step\}] \} \{
    set ii  [xround $i $step]
    puts \\"ii=$ii\\"
    set v1 0
    if \{[info exists freq($ii)]\} \{ set v1 $freq($ii) \}
    xschem raw set freq $j $v1
    incr j
  \}
\}

set mean [mean]
set variance [variance $mean]
set rms [expr \{sqrt($variance)\}]

get_histo @n.xm3.nsg13_lv_pmos\\\\[vth\\\\] 348e-3 346e-3 350e-3 0.125e-3
xschem reset_caches
xschem redraw
"
}
C {devices/launcher.sym} 320 -380 0 0 {name=h3
descr="load vth_pmoshv_hist" 
tclcommand="
xschem raw_read $netlist_dir/tb_vth_mc_ihp.raw

proc mean \{\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm4.nsg13_hv_pmos\\\\[vth\\\\] -1] \{
    set sum [expr \{$sum + $i\}]
  \}
  set mean [expr \{$sum / $points\}]
  return  $mean
\}

proc variance \{mean\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values @n.xm4.nsg13_hv_pmos\\\\[vth\\\\] -1] \{
    set diff_sq [expr \{($i - $mean) ** 2\}]
    set sum [expr \{$sum + $diff_sq\}]
  \}
  set variance [expr \{$sum / ($points - 1) \}] ;# use points - 1 for unbiased estimator
  return  $variance
\}


proc get_histo \{var mean min max step\} \{
  puts var=$var
  xschem raw switch 0
  proc xround \{a size\} \{ return [expr \{round($a/$size) * $size\}]\}
  #### get rounded data
  catch \{unset freq\}
  foreach v1 [xschem raw values $var -1] \{
    set v1 [xround $v1 $step]
    puts \\"v1=$v1\\"
    if \{![info exists freq($v1)]\} \{ set freq($v1) 1\} else \{incr freq($v1)\}
  \}
  #### create histogram raw data in memory
  xschem raw new distrib distrib vth $min $max $step
  xschem raw add freq
  set j 0
  for \{set i $min\} \{$i <= $max\} \{set i [expr \{$i + $step\}] \} \{
    set ii  [xround $i $step]
    puts \\"ii=$ii\\"
    set v1 0
    if \{[info exists freq($ii)]\} \{ set v1 $freq($ii) \}
    xschem raw set freq $j $v1
    incr j
  \}
\}

set mean [mean]
set variance [variance $mean]
set rms [expr \{sqrt($variance)\}]

get_histo @n.xm4.nsg13_hv_pmos\\\\[vth\\\\] 683e-3 680e-3 685e-3 0.5e-3
xschem reset_caches
xschem redraw
"
}
