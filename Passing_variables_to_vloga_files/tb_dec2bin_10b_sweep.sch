v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 320 -700 1120 -300 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color="4 4 4 4"
node="bin_out_0
bin_out_1
bin_out_2
bin_out_3"}
N -280 -160 -240 -160 {lab=avdd}
N -280 -140 -240 -140 {lab=vssa}
N 60 -160 100 -160 {lab=bin_out_9}
N 60 -140 100 -140 {lab=bin_out_8}
N 60 -120 100 -120 {lab=bin_out_7}
N 60 -100 100 -100 {lab=bin_out_6}
N 60 -80 100 -80 {lab=bin_out_5}
N 60 -60 100 -60 {lab=bin_out_4}
N 60 -40 100 -40 {lab=bin_out_3}
N 60 -20 100 -20 {lab=bin_out_2}
N 60 0 100 0 {lab=bin_out_1}
N 60 20 100 20 {lab=bin_out_0}
N -440 -50 -440 -10 {
lab=vssa}
N -440 -150 -440 -110 {
lab=avdd}
N -520 -50 -520 -30 {
lab=GND}
N -520 -150 -520 -110 {
lab=vssa}
N 460 -40 500 -40 {lab=bin_out_6}
N 460 20 500 20 {lab=vssa}
N 300 -40 340 -40 {lab=bin_out_5}
N 300 20 340 20 {lab=vssa}
N 940 -160 980 -160 {lab=bin_out_4}
N 940 -100 980 -100 {lab=vssa}
N 940 -40 980 -40 {lab=bin_out_9}
N 940 20 980 20 {lab=vssa}
N 780 -40 820 -40 {lab=bin_out_8}
N 780 20 820 20 {lab=vssa}
N 620 -40 660 -40 {lab=bin_out_7}
N 620 20 660 20 {lab=vssa}
N 780 -160 820 -160 {lab=bin_out_3}
N 780 -100 820 -100 {lab=vssa}
N 620 -160 660 -160 {lab=bin_out_2}
N 620 -100 660 -100 {lab=vssa}
N 460 -160 500 -160 {lab=bin_out_1}
N 460 -100 500 -100 {lab=vssa}
N 300 -100 340 -100 {lab=vssa}
N 300 -160 340 -160 {lab=bin_out_0}
C {devices/lab_pin.sym} -280 -160 0 0 {name=p8 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -280 -140 0 0 {name=p9 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 100 -160 2 0 {name=p21 sig_type=std_logic lab=bin_out_9}
C {devices/lab_pin.sym} 100 -140 2 0 {name=p22 sig_type=std_logic lab=bin_out_8}
C {devices/lab_pin.sym} 100 -120 2 0 {name=p23 sig_type=std_logic lab=bin_out_7}
C {devices/lab_pin.sym} 100 -100 2 0 {name=p24 sig_type=std_logic lab=bin_out_6}
C {devices/lab_pin.sym} 100 -80 2 0 {name=p26 sig_type=std_logic lab=bin_out_5}
C {devices/lab_pin.sym} 100 -60 2 0 {name=p28 sig_type=std_logic lab=bin_out_4}
C {devices/lab_pin.sym} 100 -40 2 0 {name=p29 sig_type=std_logic lab=bin_out_3}
C {devices/lab_pin.sym} 100 -20 2 0 {name=p30 sig_type=std_logic lab=bin_out_2}
C {devices/lab_pin.sym} 100 0 2 0 {name=p31 sig_type=std_logic lab=bin_out_1}
C {devices/lab_pin.sym} 100 20 2 0 {name=p32 sig_type=std_logic lab=bin_out_0}
C {dec2bin_10b.sym} -90 -70 0 0 {name=x2
xschematic=dec2bin_10b.sch
model=dec2bin_10b
dec_code = dec_code_var


}
C {devices/vsource.sym} -440 -80 0 0 {name=Vavdd value=xavdd
format="@name @pinlist @value"}
C {devices/vsource.sym} -520 -80 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -520 -30 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -520 -120 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -440 -40 1 1 {name=p7 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -440 -120 3 1 {name=p1 sig_type=std_logic lab=avdd

}
C {devices/code.sym} -490 -330 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ss
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice sf
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice fs

.include /home/slice/pdk/SW130/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* Parameters
.param xavdd = 3.3
.param xdvdd = 1.8
.param xvcm = xavdd/2
.param xibias = 100n
.param xCload = 100f
.param xRload = 100Meg
.param xtsim = 5u
.param xvin_se = 0.5m
.param dec_code_var = 0
*.csparam xdec_code_var = 'dec_code_var'
.csparam xtsim_var = 'xtsim'

.temp 27

.model dec2bin_10b dec2bin_10b

  .control

  pre_osdi dec2bin_10b.osdi
  *save all
  save v(vout) v(vcm) v(vinp) v(vinn) v(avdd) v(dvdd) v(bin_out_9) v(bin_out_8) v(bin_out_7) v(bin_out_6) v(bin_out_5) v(bin_out_4) v(bin_out_3) v(bin_out_2) v(bin_out_1) v(bin_out_0)
  save i(Vavdd)
  *.option savecurrents
  echo $&xtsim_var
  echo $&xdec_code_var
  
  let xdec_code_var = 0

   repeat 16                  ; loop start
   alterparam dec_code_var = $&xdec_code_var;        ; alter the decimal code
   reset
   
** 1. TRAN ANALYSIS ** 

  tran 10n $&xtsim_var
  remzerovec

  *set filetype=ascii
  write tb_ina_pa_tran_data.raw
  set appendwrite   
  
** 2. MEASURES ** 
    echo \\"$&xdec_code_var\\" >> code_measures.txt
    echo -- >> code_measures.txt
    meas TRAN out0_ave AVG v(bin_out_0) from=0 to= $&xtsim_var
    meas TRAN out1_ave AVG v(bin_out_1) from=0 to= $&xtsim_var
    meas TRAN out2_ave AVG v(bin_out_2) from=0 to= $&xtsim_var
    meas TRAN out3_ave AVG v(bin_out_3) from=0 to= $&xtsim_var
    meas TRAN out4_ave AVG v(bin_out_4) from=0 to= $&xtsim_var
    meas TRAN out5_ave AVG v(bin_out_5) from=0 to= $&xtsim_var
    echo \\"$&out0_ave\\" >> code_measures.txt
    echo \\"$&out1_ave\\" >> code_measures.txt
    echo \\"$&out2_ave\\" >> code_measures.txt
    echo \\"$&out3_ave\\" >> code_measures.txt
    echo \\"$&out4_ave\\" >> code_measures.txt
    echo \\"$&out5_ave\\" >> code_measures.txt
    echo -- >> code_measures.txt
    
   let xdec_code_var = xdec_code_var + 1;
   end      
    
 
  setplot
 
quit 0
.endc






   
"}
C {devices/lab_pin.sym} 500 -40 2 0 {name=p3 sig_type=std_logic lab=bin_out_6}
C {devices/res.sym} 500 -10 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 340 -40 2 0 {name=p4 sig_type=std_logic lab=bin_out_5}
C {devices/res.sym} 340 -10 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 980 -160 2 0 {name=p5 sig_type=std_logic lab=bin_out_4}
C {devices/res.sym} 980 -130 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 980 -40 2 0 {name=p10 sig_type=std_logic lab=bin_out_9}
C {devices/res.sym} 980 -10 0 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 820 -40 2 0 {name=p11 sig_type=std_logic lab=bin_out_8}
C {devices/res.sym} 820 -10 0 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 660 -40 2 0 {name=p12 sig_type=std_logic lab=bin_out_7}
C {devices/res.sym} 660 -10 0 0 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 820 -160 2 0 {name=p13 sig_type=std_logic lab=bin_out_3}
C {devices/res.sym} 820 -130 0 0 {name=R8
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 660 -160 2 0 {name=p14 sig_type=std_logic lab=bin_out_2}
C {devices/res.sym} 660 -130 0 0 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 500 -160 2 0 {name=p15 sig_type=std_logic lab=bin_out_1}
C {devices/res.sym} 500 -130 0 0 {name=R10
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 780 -100 0 0 {name=p16 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 460 20 0 0 {name=p17 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 940 20 0 0 {name=p18 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 780 20 0 0 {name=p19 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 620 20 0 0 {name=p20 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 300 20 0 0 {name=p25 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 940 -100 0 0 {name=p27 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 620 -100 0 0 {name=p33 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 460 -100 0 0 {name=p34 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} 340 -160 2 0 {name=p35 sig_type=std_logic lab=bin_out_0}
C {devices/res.sym} 340 -130 0 0 {name=R11
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 300 -100 0 0 {name=p36 sig_type=std_logic lab=vssa}
