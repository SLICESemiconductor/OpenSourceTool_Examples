v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -650 230 -630 {
lab=GND}
N 230 -750 230 -710 {
lab=vssa}
N 310 -650 310 -610 {
lab=vssa}
N 310 -750 310 -710 {
lab=vdda}
N 390 -650 390 -610 {
lab=vssa}
N 390 -750 390 -710 {
lab=vdrain}
N 470 -650 470 -610 {
lab=vssa}
N 470 -750 470 -710 {
lab=vgate}
N 640 -750 640 -720 {
lab=vdda}
N 600 -750 640 -750 {
lab=vdda}
N 680 -660 720 -660 {
lab=vdda}
N 640 -600 640 -560 {
lab=vdrain}
N 540 -660 580 -660 {
lab=vgate}
C {devices/vsource.sym} 310 -680 0 0 {name=Vvdda value=xvdda
format="@name @pinlist @value"}
C {devices/vsource.sym} 230 -680 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} 230 -630 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 230 -720 1 0 {name=p2 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 310 -640 3 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 310 -720 1 0 {name=p3 sig_type=std_logic lab=vdda}
C {devices/vsource.sym} 390 -680 0 0 {name=Vvd value=xvdrain
format="@name @pinlist @value"}
C {devices/lab_wire.sym} 390 -640 3 0 {name=p4 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 390 -720 1 0 {name=p5 sig_type=std_logic lab=vdrain}
C {devices/vsource.sym} 470 -680 0 0 {name=Vvg value=xvgate
format="@name @pinlist @value"}
C {devices/lab_wire.sym} 470 -640 3 0 {name=p6 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 470 -720 1 0 {name=p7 sig_type=std_logic lab=vgate}
C {devices/lab_wire.sym} 630 -750 0 0 {name=p8 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 690 -660 0 1 {name=p9 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 640 -590 3 0 {name=p10 sig_type=std_logic lab=vdrain}
C {devices/lab_wire.sym} 570 -660 0 0 {name=p11 sig_type=std_logic lab=vgate}
C {devices/code.sym} 760 -720 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt

.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt_mm
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ss_mm
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice sf_mm
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice fs_mm
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff_mm
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice mc

*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ss
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice sf
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice fs

* Parameters
.param xvdda = 1.8
.csparam xvdda_var = 'xvdda'
.param xvdrain = 1
.param xvgate = 1
.temp 27

  ** 1. DCOP analysis **
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  .option savecurrents
  .save

  * svt device
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vgs]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vth]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[gds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[gm]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[id]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vdsat]
  * hvt device  
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[vgs]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[vds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[vth]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[gds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[gm]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[id]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[vdsat]
  * lvt device  
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[vds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[vdsat]

  .control
  
  
    save all
  
    let run = 1
    let cor_id = 1
    echo \\"$&cor_id\\" >> vth_measures_tt_mm.txt

    dowhile run <= 200
    reset
    
    ** 1. DCOP ANALYSIS **     
    op
    *let vth_meas = @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vth]
    *let vth_meas = @m.xdut.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
    let vth_meas = @m.xdut.xm1.msky130_fd_pr__pfet_01v8_hvt[vth]
    *echo \\"$&vth_meas\\" >> vth_measures_all_mm.txt
    echo \\"$&vth_meas\\" >> vth_measures_tt_mm.txt
    remzerovec 
    * need to set appendwrite to accumulate the vth's from all runs
    * in one file. THIS MEANS YOU MUST ENSURE FILE \\"vth_measures.txt\\" IS
    * DELETED FROM THE RUNDIR PRIOR TO RUNNING THIS LOOP. Otherwise
    * MC data from an older analysis will corrupt the results from your
    * current analysis. For best practice you should also delete file 
    * \\"tb_MC_PMOS.raw\\" to save diskspace.
    *set appendwrite
    *set filetype=ascii
    *write tb_MC_PMOS.raw
    * release the memory holding the output data sets (good memory management)
    destroy all
    let run = run+1
    end    
  
  setplot
  
quit 0
.endc


"}
C {DUT.sym} 620 -600 0 0 {name=xdut
xschematic=DUT.sch
xschematic=pmos_1v8_svt.sch
xschematic=pmos_1v8_lvt.sch
schematic=pmos_1v8_hvt.sch
}
C {devices/launcher.sym} 470 -520 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
name=h2
descr="Process corner group"
tclcommand="
set spicefile $netlist_dir/tb_mc_pmos.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ff corner
exec sed -i \{/^\\.lib/s/tt_mm/ff_mm/\} $spicefile
exec sed -i \{s/vth_measures_tt_mm.txt/vth_measures_ff_mm.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff_mm/ss_mm/\} $spicefile
exec sed -i \{s/vth_measures_ff_mm.txt/vth_measures_ss_mm.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss_mm/sf_mm/\} $spicefile
exec sed -i \{s/vth_measures_ss_mm.txt/vth_measures_sf_mm.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf_mm/fs_mm/\} $spicefile
exec sed -i \{s/vth_measures_sf_mm.txt/vth_measures_fs_mm.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} 470 -480 0 0 {# Process corner sweep for tt, ff, ss, sf, fs
# Assumes stim file has set corner to tt
name=h1
descr="Process corner group appended"
tclcommand="
set spicefile $netlist_dir/tb_mc_pmos.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ff corner
exec sed -i \{/^\\.lib/s/tt_mm/ff_mm/\} $spicefile
#exec sed -i \{s/vth_measures_tt_mm.txt/vth_measures_ff_mm.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{/^\\.lib/s/ff_mm/ss_mm/\} $spicefile
#exec sed -i \{s/vth_measures_ff_mm.txt/vth_measures_ss_mm.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{/^\\.lib/s/ss_mm/sf_mm/\} $spicefile
#exec sed -i \{s/vth_measures_ss_mm.txt/vth_measures_sf_mm.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{/^\\.lib/s/sf_mm/fs_mm/\} $spicefile
#exec sed -i \{s/vth_measures_sf_mm.txt/vth_measures_fs_mm.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} 470 -440 0 0 {# Temp corner sweep for Tmin = -40C, Tmax = 125C, Trt = 27C
# Assumes stim file has set temp to 27C
name=h3
descr="Temp corner group"
tclcommand="
set spicefile $netlist_dir/tb_mc_pmos.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# set T = 125C
exec sed -i \{/^\\.temp/s/27/125/\} $spicefile
exec sed -i \{s/let cor_id = 1/let cor_id = 2/\} $spicefile
exec sed -i \{s/vth_measures_tt_mm.txt/vth_measures_tt_mm_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# set T = -40C
exec sed -i \{/^\\.temp/s/125/-40/\} $spicefile
exec sed -i \{s/let cor_id = 2/let cor_id = 3/\} $spicefile
exec sed -i \{s/vth_measures_tt_mm_125.txt/vth_measures_tt_mm_n40.txt/\} $spicefile
simulate
"
}
C {devices/launcher.sym} 470 -400 0 0 {# Temp corner sweep for Tmin = -40C, Tmax = 125C, Trt = 27C
# Assumes stim file has set temp to 27C and uses model tt_mm
name=h4
descr="Process / Temp corner group"
tclcommand="
set spicefile $netlist_dir/tb_mc_pmos.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
####################### set T = 125C #######################
exec sed -i \{/^\\.temp/s/27/125/\} $spicefile
# change to ff corner
exec sed -i \{s/let cor_id = 1/let cor_id = 2/\} $spicefile
exec sed -i \{/^\\.lib/s/tt_mm/ff_mm/\} $spicefile
exec sed -i \{s/vth_measures_tt_mm.txt/vth_measures_ff_mm_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{s/let cor_id = 2/let cor_id = 3/\} $spicefile
exec sed -i \{/^\\.lib/s/ff_mm/ss_mm/\} $spicefile
exec sed -i \{s/vth_measures_ff_mm_125.txt/vth_measures_ss_mm_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{s/let cor_id = 3/let cor_id = 4/\} $spicefile
exec sed -i \{/^\\.lib/s/ss_mm/sf_mm/\} $spicefile
exec sed -i \{s/vth_measures_ss_mm_125.txt/vth_measures_sf_mm_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{s/let cor_id = 4/let cor_id = 5/\} $spicefile
exec sed -i \{/^\\.lib/s/sf_mm/fs_mm/\} $spicefile
exec sed -i \{s/vth_measures_sf_mm_125.txt/vth_measures_fs_mm_125.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
####################### set T = -40C #######################
exec sed -i \{/^\\.temp/s/125/-40/\} $spicefile
# change to ff corner
exec sed -i \{s/let cor_id = 5/let cor_id = 6/\} $spicefile
exec sed -i \{/^\\.lib/s/fs_mm/ff_mm/\} $spicefile
exec sed -i \{s/vth_measures_fs_mm_125.txt/vth_measures_ff_mm_n40.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to ss corner
exec sed -i \{s/let cor_id = 6/let cor_id = 7/\} $spicefile
exec sed -i \{/^\\.lib/s/ff_mm/ss_mm/\} $spicefile
exec sed -i \{s/vth_measures_ff_mm_n40.txt/vth_measures_ss_mm_n40.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to sf corner
exec sed -i \{s/let cor_id = 7/let cor_id = 8/\} $spicefile
exec sed -i \{/^\\.lib/s/ss_mm/sf_mm/\} $spicefile
exec sed -i \{s/vth_measures_ss_mm_n40.txt/vth_measures_sf_mm_n40.txt/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change to fs corner
exec sed -i \{s/let cor_id = 8/let cor_id = 9/\} $spicefile
exec sed -i \{/^\\.lib/s/sf_mm/fs_mm/\} $spicefile
exec sed -i \{s/vth_measures_sf_mm_n40.txt/vth_measures_fs_mm_n40.txt/\} $spicefile
simulate
"


}
