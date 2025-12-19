v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -1160 -260 160 280 {}
B 2 240 -620 1040 -220 {flags=graph
y1=0
y2=9e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_vth_ihp_nmoslv_dc.raw
sim_type=dc
color=4
node="ids_nmos_lv; i(@n.xm1.nsg13_lv_nmos[ids])"}
B 2 1080 -620 1880 -220 {flags=graph
y1=1.1119942e-06
y2=2.5111995e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_vth_ihp_nmoshv_dc.raw
sim_type=dc
color=4
node="ids_nmos_hv; i(@n.xm2.nsg13_hv_nmos[ids])"}
B 2 240 -120 1040 280 {flags=graph
y1=1.6e-19
y2=1.9e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_vth_ihp_pmoslv_dc.raw
sim_type=dc
color=4
node="ids_pmos_lv; i(@n.xm3.nsg13_lv_pmos[ids])"}
B 2 1080 -120 1880 280 {flags=graph
y1=2.7e-18
y2=9.7e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_vth_ihp_pmoshv_dc.raw
sim_type=dc
color=4
node="ids_pmos_hv; i(@n.xm4.nsg13_hv_pmos[ids])"}
T {HV PMOS} -1000 -190 0 0 0.4 0.4 {}
T {LV PMOS} -710 -190 0 0 0.4 0.4 {}
T {HV NMOS} -400 -190 0 0 0.4 0.4 {}
T {LV NMOS} -100 -190 0 0 0.4 0.4 {}
T {DUTs} -570 -240 0 0 0.6 0.6 {}
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
w=10u
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
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
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
  
  .include tb_vth_ihp.save
  
  *.save all
  .save v(vd_nmos) v(vg_nmos)
  .save @n.xm1.nsg13_lv_nmos[ids] @n.xm2.nsg13_hv_nmos[ids] @n.xm3.nsg13_lv_pmos[ids] @n.xm4.nsg13_hv_pmos[ids]  
  
  .control
  
    *set xTj = ( -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 )
    set xTj = ( 27 )
    foreach xTj_var $xTj

    let Tj_meas = $xTj_var

    echo temperature is \\"$&Tj_meas\\"

    set temp = $xTj_var
    

** 1. DCOP ANALYSIS ** 

  op
  *set filetype=ascii
  remzerovec
  write tb_vth_ihp_op.raw
  echo \\"$&Tj_meas\\" >> vth_measures_T.txt
  let vth_meas_nmoslv = @n.xm1.nsg13_lv_nmos[vth]
  echo \\"$&vth_meas_nmoslv\\" >> vth_measures_nmoslv_tt.txt
  let vth_meas_nmoshv = @n.xm2.nsg13_hv_nmos[vth]
  echo \\"$&vth_meas_nmoshv\\" >> vth_measures_nmoshv_tt.txt
  let vth_meas_pmoslv = @n.xm3.nsg13_lv_pmos[vth]
  echo \\"$&vth_meas_pmoslv\\" >> vth_measures_pmoslv_tt.txt
  let vth_meas_pmoshv = @n.xm4.nsg13_hv_pmos[vth]
  echo \\"$&vth_meas_pmoshv\\" >> vth_measures_pmoshv_tt.txt
  
 ** 2. DC ANALYSIS **  
  
  dc Vvd_nmos_lv 0 $&xvdda_lv_var 10m
  remzerovec
  write tb_vth_ihp_nmoslv_dc.raw
  dc Vvd_nmos_hv 0 $&xvdda_hv_var 10m  
  remzerovec
  write tb_vth_ihp_nmoshv_dc.raw
  dc Vvd_pmos_lv 0 $&xvdda_lv_var 10m
  remzerovec
  write tb_vth_ihp_pmoslv_dc.raw
  dc Vvd_pmos_hv 0 $&xvdda_hv_var 10m
  remzerovec
  write tb_vth_ihp_pmoshv_dc.raw
 
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
w=10u
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
w=10u
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
w=10u
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
C {launcher.sym} 300 -680 0 0 {name=h1
descr="load nmos_lv dc waves" 
tclcommand="xschem raw_read $netlist_dir/tb_vth_ihp_nmoslv_dc.raw dc"


}
C {launcher.sym} 1140 -680 0 0 {name=h2
descr="load nmos_hv dc waves" 
tclcommand="xschem raw_read $netlist_dir/tb_vth_ihp_nmoshv_dc.raw dc"


}
C {launcher.sym} 300 -180 0 0 {name=h3
descr="load pmos_lv dc waves" 
tclcommand="xschem raw_read $netlist_dir/tb_vth_ihp_pmoslv_dc.raw dc"


}
C {launcher.sym} 1140 -180 0 0 {name=h4
descr="load pmos_hv dc waves" 
tclcommand="xschem raw_read $netlist_dir/tb_vth_ihp_pmoshv_dc.raw dc"


}
C {devices/launcher.sym} -1010 -640 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
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
C {devices/launcher.sym} -1010 -600 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
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
C {devices/launcher.sym} -1010 -560 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
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
