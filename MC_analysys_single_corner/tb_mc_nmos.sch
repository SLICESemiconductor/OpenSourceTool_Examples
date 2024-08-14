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
lab=vdrain}
N 600 -750 640 -750 {
lab=vdrain}
N 700 -660 740 -660 {
lab=vssa}
N 640 -600 640 -560 {
lab=vssa}
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
C {devices/lab_wire.sym} 630 -750 0 0 {name=p8 sig_type=std_logic lab=vdrain}
C {devices/lab_wire.sym} 710 -660 0 1 {name=p9 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 640 -590 3 0 {name=p10 sig_type=std_logic lab=vssa
}
C {devices/lab_wire.sym} 570 -660 0 0 {name=p11 sig_type=std_logic lab=vgate}
C {devices/code.sym} 760 -720 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt_mm
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
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8[vgs]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8[vds]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8[vth]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8[gds]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8[gm]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8[id]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8[vdsat]
  * hvt device  
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[vgs]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[vds]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[vth]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[gds]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[gm]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[id]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[vdsat]
  * lvt device  
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
  +  @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[vdsat]

  .control
  
  
    save all
  
    let run = 1

    dowhile run <= 200
    reset
    
    ** 1. DCOP ANALYSIS **     
    op
    *let vth_meas = @m.xdut.xm1.msky130_fd_pr__nfet_01v8[vth]
    let vth_meas = @m.xdut.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
    *let vth_meas = @m.xdut.xm1.msky130_fd_pr__nfet_01v8_hvt[vth]
    echo \\"$&vth_meas\\" >> vth_measures.txt
    remzerovec 
    * need to set appendwrite to accumulate the vth's from all runs
    * in one file. THIS MEANS YOU MUST ENSURE FILE \\"vth_measures.txt\\" IS
    * DELETED FROM THE RUNDIR PRIOR TO RUNNING THIS LOOP. Otherwise
    * MC data from an older analysis will corrupt the results from your
    * current analysis. For best practice you should also delete file 
    * \\"tb_MC_PMOS.raw\\" to save diskspace.
    set appendwrite
    set filetype=ascii
    write tb_MC_NMOS.raw
    * release the memory holding the output data sets (good memory management)
    destroy all
    let run = run+1
    end    
  
  setplot
  
quit 0
.endc


"}
C {DUT.sym} 640 -660 0 0 {name=xdut
xschematic=DUT.sch
xschematic=nmos_1v8_svt.sch
schematic=nmos_1v8_lvt.sch}
