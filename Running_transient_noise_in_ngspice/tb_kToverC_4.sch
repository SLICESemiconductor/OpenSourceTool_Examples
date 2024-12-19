v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1000 -1000 1800 -600 {flags=graph,unlocked
y1=-250u
y2=250u
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran

autoload=1




rawfile=$netlist_dir/tran.raw
color=4
node="\\"vout-mean;vout3 0.9 -\\""}
B 2 1000 -1420 1800 -1020 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
sim_type=noise
autoload=1
rawfile=$netlist_dir/noise_density.raw

color=7
node=onoise_spectrum

y1=9.1e-10
y2=9.2e-09
x2=8.6
x1=3}
B 2 1820 -1420 2620 -1020 {flags=graph,unlocked

y2=6.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=8.6
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
sim_type=noise
rawfile=$netlist_dir/noise_density.raw
color=4
node="\\"integrated_noise;onoise_spectrum onoise_spectrum * integ() sqrt()\\""
autoload=1
y1=0
x1=3}
B 2 1820 -1000 2340 -600 {flags=graph,unlocked
y1=-250u
y2=250u
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
node=vout3
color=4
dataset=-1
unitx=1
logx=0
logy=0
mode=HistoH
sweep=freq
rawfile=distrib
sim_type=distrib
linewidth_mult=2
x2=1600}
T {tcleval(rms=[to_eng $rms]
mean=[to_eng $mean])} 1390 -550 0 0 0.6 0.6 {floater=yes layer=4}
N 240 -640 240 -620 {
lab=GND}
N 240 -740 240 -700 {
lab=vssa}
N 320 -640 320 -600 {
lab=vssa}
N 320 -740 320 -700 {
lab=vdda}
N 480 -830 480 -800 {
lab=vdda}
N 440 -830 480 -830 {
lab=vdda}
N 480 -740 480 -700 {
lab=vout}
N 480 -640 480 -600 {
lab=vssa}
N 600 -640 600 -600 {
lab=vssa}
N 480 -720 600 -720 {
lab=vout}
N 600 -720 600 -700 {
lab=vout}
N 490 -1110 490 -1080 {
lab=vdda}
N 450 -1110 490 -1110 {
lab=vdda}
N 490 -1020 490 -980 {
lab=vout2}
N 490 -920 490 -880 {
lab=vssa}
N 760 -920 760 -880 {
lab=vssa}
N 660 -1000 760 -1000 {
lab=vout3}
N 490 -1000 600 -1000 {
lab=vout2}
N 760 -1000 760 -980 {
lab=vout3}
C {devices/vsource.sym} 320 -670 0 0 {name=Vvdda value="'xvdda' ac 1"
format="@name @pinlist @value"}
C {devices/vsource.sym} 240 -670 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} 240 -620 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 240 -710 1 0 {name=p2 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 320 -630 3 0 {name=p1 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 320 -710 1 0 {name=p3 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 470 -830 0 0 {name=p8 sig_type=std_logic lab=vdda}
C {devices/code.sym} 800 -710 0 0 {name=STIM_FILE only_toplevel=false value="** opencircuitdesign pdks install
* .lib /home/schippes/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ss
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice sf
*.lib /home/slice/pdk/SW130/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice fs

* Parameters
.param xvdda = 1.8
.csparam xvdda_var = 'xvdda'
.param xtsim = 10u
.csparam xtsim_var = 'xtsim'
.param xvdrain = 1
.param xvgate = 0.57
.param xRvar = 10k
.param xCvar = 1p
.temp 27

  ** 1. DCOP analysis **
  ** must save the below for DCOP analysis to be back annotated onto the schematic
  *.option savecurrents
  * svt device
  .save
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vgs]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vth]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[gds]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[gm]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[id]
  +  @m.xdut.xm1.msky130_fd_pr__pfet_01v8[vdsat]

  .control
  
    * If you want to run the awk script on ac results
    save all
    * If you want to run histogram analysis on transient noise results (octave script set up when only vout3 is saved)
    *save v(vout3)
    * If you only want to view transient results
    *save v(vout3) v(vout)
    * If you want to view transient / ac results
    *save v(vout3) v(vout) onoise_spectrum onoise_total

    
** 1. DCOP ANALYSIS ** 
  
  op
  remzerovec
  write dcop.raw

** 2. TRAN ANALYSIS ** 

  tran 1n $&xtsim_var
  remzerovec
  write tran.raw
  
  * only required if post processing stdev / mean in octave
  *set filetype=ascii
  *remzerovec
  *write tran_data_ascii.raw
  
** 3. AC NOISE ANALYSIS **   

  let xfmax = 500Meg;

  noise v(vout) Vvdda dec 10 1e3 $&xfmax 1
  print v(onoise_total)
  setplot noise1
  set filetype=binary
  remzerovec
  write noise_density.raw
*  plot onoise_spectrum
  let vnoise_op_int = sqrt(integ(onoise_spectrum*onoise_spectrum))
*  plot vnoise_op_int xlog

  setplot noise2
  set filetype=ascii
  remzerovec
  write integrated_noise.raw
   
setplot
  
*quit 0
.endc


"}
C {devices/res.sym} 480 -670 0 0 {name=R2
value="'xRvar' noisy=1"
footprint=1206
device=resistor
m=1
noisy=0}
C {devices/lab_wire.sym} 600 -720 0 0 {name=p17 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 480 -630 3 0 {name=p9 sig_type=std_logic lab=vssa}
C {devices/res.sym} 480 -770 0 0 {name=R1
value="'xRvar' noisy=1"
footprint=1206
device=resistor
m=1
noisy=0}
C {devices/capa.sym} 600 -670 0 0 {name=C1
m=1
value='xCvar'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 600 -630 3 0 {name=p4 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 480 -1110 0 0 {name=p5 sig_type=std_logic lab=vdda}
C {devices/res.sym} 490 -950 0 0 {name=R3
value="'xRvar' noisy=0"
footprint=1206
device=resistor
m=1
noisy=0}
C {devices/lab_wire.sym} 760 -1000 0 0 {name=p6 sig_type=std_logic lab=vout3}
C {devices/lab_wire.sym} 490 -910 3 0 {name=p7 sig_type=std_logic lab=vssa}
C {devices/res.sym} 490 -1050 0 0 {name=R4
value="'xRvar' noisy=0"
footprint=1206
device=resistor
m=1
noisy=0}
C {devices/capa.sym} 760 -950 0 0 {name=C2
m=1
value='xCvar'
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 760 -910 3 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 570 -1000 0 0 {name=p11 sig_type=std_logic lab=vout2}
C {devices/vsource.sym} 630 -1000 1 0 {name=Vvnres value="0 ac 1 TRNOISE (203.5u 1n 0 0)"
format="@name @pinlist @value"}
C {devices/launcher.sym} 1200 -530 0 0 {name=h5
descr="load waves" 
tclcommand="
xschem raw_read $netlist_dir/tran.raw

proc mean \{\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values vout3 -1] \{
    set sum [expr \{$sum + $i\}]
  \}
  set mean [expr \{$sum / $points\}]
  return  $mean
\}

proc variance \{mean\} \{
  set sum 0
  set points [xschem raw points]
  foreach i [xschem raw values vout3 -1] \{
    set diff_sq [expr \{($i - $mean) ** 2\}]
    set sum [expr \{$sum + $diff_sq\}]
  \}
  set variance [expr \{$sum / ($points - 1) \}] ;# use points - 1 for unbiased estimator
  return  $variance
\}


proc get_histo \{var mean min max step\} \{
  xschem raw switch 0
  proc xround \{a size\} \{ return [expr \{round($a/$size) * $size\}]\}
  #### get rounded data
  catch \{unset freq\}
  foreach v1 [xschem raw values $var] \{
    set v1 [xround [expr \{$v1 - $mean\}] $step]
    if \{![info exists freq($v1)]\} \{ set freq($v1) 1\} else \{incr freq($v1)\}
  \}
  #### create histogram raw data in memory
  xschem raw new distrib distrib vout3 $min $max $step
  xschem raw add freq
  set j 0
  for \{set i $min\} \{$i <= $max\} \{set i [expr \{$i + $step\}] \} \{
    set ii  [xround $i $step]
    set v1 0
    if \{[info exists freq($ii)]\} \{ set v1 $freq($ii) \}
    xschem raw set freq $j $v1
    incr j
  \}
\}

set mean [mean]
set variance [variance $mean]
set rms [expr \{sqrt($variance)\}]

get_histo vout3 0.9 -250e-6 250e-6 5e-6
xschem reset_caches
xschem redraw
"
}
C {devices/launcher.sym} 1200 -490 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/tran.raw"
}
