v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -600 160 200 560 {flags=graph,unlocked
y1=0
y2=2
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
node="or_out
vb
va
not_out"
color="4 12 7 17"
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=tran
rawfile=$netlist_dir/tb_xspice.raw}
N -420 60 -420 100 {lab=GND}
N -420 -40 -420 0 {
lab=vssa}
N -320 60 -320 100 {
lab=vssa}
N -320 -40 -320 0 {
lab=va}
N -240 60 -240 100 {
lab=vssa}
N -240 -40 -240 0 {
lab=vb}
N -100 -20 -60 -20 {
lab=va}
N -100 0 -60 0 {
lab=vb}
N 100 50 100 90 {
lab=vssa}
N 100 -20 100 -10 {lab=or_out}
N 40 -20 100 -20 {lab=or_out}
N 240 -20 280 -20 {
lab=va}
N 420 50 420 90 {
lab=vssa}
N 420 -20 420 -10 {lab=not_out}
N 360 -20 420 -20 {lab=not_out}
C {devices/lab_wire.sym} -420 -10 3 1 {name=p12 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -320 70 1 1 {name=p13 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -320 -10 3 1 {name=p14 sig_type=std_logic lab=va

}
C {vsource.sym} -420 30 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -320 30 0 0 {name=V2 value=\{xvdda*xva\} savecurrent=false}
C {gnd.sym} -420 100 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} -240 70 1 1 {name=p1 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -240 -10 3 1 {name=p2 sig_type=std_logic lab=vb

}
C {vsource.sym} -240 30 0 0 {name=V3 value=\{xvdda*xvb\} savecurrent=false}
C {devices/lab_wire.sym} -70 -20 0 0 {name=p3 sig_type=std_logic lab=va

}
C {devices/lab_wire.sym} -70 0 0 0 {name=p4 sig_type=std_logic lab=vb

}
C {devices/lab_wire.sym} 100 -20 0 1 {name=p20 sig_type=std_logic lab=or_out

}
C {capa.sym} 100 20 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 100 60 1 1 {name=p38 sig_type=std_logic lab=vssa

}
C {devices/code.sym} -610 -20 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
.lib /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
*.include $\{PDK_ROOT\}/$\{PDK\}/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.include /home/slice/pdk/iHP/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice

* Parameters
.param xvdda = 1.8
.param xva = 0
.param xvb = 1
.param xtsim = 5u
.csparam xtsim_var = 'xtsim'
.param xtstep = 1n
.csparam xtstep_var = 'xtstep'
  
.save v(va) v(vb) v(or_out) v(not_out)
  
.model or_gate_xs d_or(rise_delay = 0.5e-9 fall_delay = 0.3e-9
+ input_load = 0.5e-12)

.model not_gate_xs d_inverter(rise_delay = 0.5e-9 fall_delay = 0.3e-9
+ input_load = 0.5e-12)

.model auto_dac dac_bridge(out_low = 0 out_high = 1.8 t_rise = 10p t_fall = 10p)

  .control

** TRAN ANALYSIS ** 

 tran $&xtstep_var $&xtsim_var
  *set filetype=ascii
  remzerovec
  write tb_xspice.raw
  
    plot tran.v(or_out) tran.v(va) tran.v(vb)
  
  setplot
  listing e
*quit 0
.endc


"}
C {or_gate_xs.sym} 80 0 0 0 {name=a1}
C {launcher.sym} -40 120 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_xspice.raw tran"
}
C {not_gate_xs.sym} 320 80 0 0 {name=a2}
C {devices/lab_wire.sym} 270 -20 0 0 {name=p5 sig_type=std_logic lab=va

}
C {devices/lab_wire.sym} 420 -20 0 1 {name=p6 sig_type=std_logic lab=not_out

}
C {capa.sym} 420 20 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 420 60 1 1 {name=p7 sig_type=std_logic lab=vssa

}
