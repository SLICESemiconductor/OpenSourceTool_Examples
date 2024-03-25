v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 420 -340 1220 60 {flags=graph,unlocked
y1=-1.2
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=30u
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rawfile=tb_OTA_tran1.raw
sim_type=tran
color=4
node="\\"non-linear data; vsquare\\""}
B 2 1260 -340 2060 60 {flags=graph,unlocked

y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=30e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rawfile=tb_OTA_tran2.raw
sim_type=tran
color=7
node="\\"linearised_data; vsquare\\""
y1=-1.2}
B 2 800 100 1600 500 {flags=graph,unlocked
y1=-140

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
sim_type=sp
color="4 7 4"
node="\\"6dB_pt; -12\\"
\\"side lobe; -32\\"
\\"Hann; vsquare db20()%tb_OTA_sp6.raw ac\\""

hilight_wave=0
y2=0
x2=20e6
rawfile=tb_OTA_sp2.raw}
N -80 -60 -80 -40 {
lab=vssa}
N -80 20 -80 50 {
lab=GND}
N 0 -60 0 -40 {
lab=vsquare}
N 0 20 0 40 {
lab=vssa}
C {vsource.sym} -80 -10 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {lab_pin.sym} -80 -60 1 0 {name=p4 sig_type=std_logic lab=vssa
}
C {gnd.sym} -80 50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 0 -60 1 0 {name=p1 sig_type=std_logic lab=vsquare
}
C {lab_pin.sym} 0 40 3 0 {name=p2 sig_type=std_logic lab=vssa
}
C {code.sym} 190 -60 0 0 {name=stim_file only_toplevel=false value="* Parameters
.param xVsq = 1
.param xtr = 20p
.param xtf = 20p
*.param xfc = 1.00006103515625e6
.param xfc = 1.0546875e6
*.param xTc = 1u
.param xTc = 1/xfc
.param xtpw = (xTc/2)-xtr
*.param xtpw = 0.5u
.param numPeriods = 40
*.csparam xtsim = \{numPeriods*xT\}
*.csparam xtsim = 106u
.csparam xtsim = 26.6u
*.csparam xtsim = 20u
  .control

  save all
  echo $&xtsim
  
** 1. TRAN SIM ** 

  tran 1n $&xtsim
  
  set xbrushwidth=2         ; assign value 2 to the predefined variable
  *plot tran1.v(vsquare)
  print v(vsquare) > vsquare_nonlin_data.txt
  remzerovec
  write tb_OTA_tran1.raw
  
** 2. LINEARISATION ** 
  
  let lin-tstart = 1u
*  let lin-tstop = 103.4u-((1/40Meg)*0)
  *let lin-tstop = 230.456u
  * coherant sampling
  *let lin-tstop = 3277.8u-((1/40Meg)*1)
  * non-coherant sampling
  *let lin-tstop = 3277.55u-((1/40Meg)*0)
   * nlow res coherant sampling
  *let lin-tstop = 26.6u-((1/40Meg)*1) 
  * nlow res coherant sampling
  let lin-tstop = 26.6u-((1/40Meg)*1)-0.25u
  *let lin-tstop = 100u
  echo $&lin-tstop
  * 40Meg
  let lin-fs = 40Meg
  let lin-tstep = 1/40Meg
  linearize v(vsquare)
  remzerovec
  write tb_OTA_tran2.raw
  print v(vsquare) > vsquare_lin_data.txt
  
** 3. FFT (none) ** 
  
  set specwindow = none
  *set specwindow = rectangular
  *set specwindow = bartlet
  *set specwindow = blackman
  *set specwindow = hanning
  *set specwindow = gaussian
  *set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_none.txt
  plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp2.raw
  
  ** 4. FFT (rectangular) ** 
  setplot tran2
  *set specwindow = none
  set specwindow = rectangular
  *set specwindow = bartlet
  *set specwindow = blackman
  *set specwindow = hanning
  *set specwindow = gaussian
  *set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_rec.txt
  *plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp3.raw
 
   ** 5. FFT (bartlet) ** 
  setplot tran2
  *set specwindow = none
  *set specwindow = rectangular
  set specwindow = bartlet
  *set specwindow = blackman
  *set specwindow = hanning
  *set specwindow = gaussian
  *set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_bart.txt
  *plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp4.raw
  
  ** 6. FFT (blackman) ** 
  setplot tran2
  *set specwindow = none
  *set specwindow = rectangular
  *set specwindow = bartlet
  set specwindow = blackman
  *set specwindow = hanning
  *set specwindow = gaussian
  *set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_black.txt
  *plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp5.raw
  
  ** 7. FFT (hanning) ** 
  setplot tran2
  *set specwindow = none
  *set specwindow = rectangular
  *set specwindow = bartlet
  *set specwindow = blackmanharris
  set specwindow = hanning
  *set specwindow = gaussian
  *set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_hann.txt
  *plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp6.raw
  
  ** 8 FFT (gaussian) ** 
  setplot tran2
  *set specwindow = none
  *set specwindow = rectangular
  *set specwindow = bartlet
  *set specwindow = blackman
  *set specwindow = hanning
  set specwindow = gaussian
  *set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_gauss.txt
  *plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp7.raw
  
   ** 9 FFT (flatop) ** 
  setplot tran2
  *set specwindow = none
  *set specwindow = rectangular
  *set specwindow = bartlet
  *set specwindow = blackman
  *set specwindow = hanning
  *set specwindow = gaussian
  set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_flat.txt
  *plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp8.raw
  
   ** 10 FFT (blackman harris) ** 
  setplot tran2
  *set specwindow = none
  *set specwindow = rectangular
  *set specwindow = bartlet
  set specwindow = blackmanharris
  *set specwindow = hanning
  *set specwindow = gaussian
  *set specwindow = flattop
  
  *spec 0 20Meg 9.765625e3 v(vsquare)
  fft v(vsquare)
  print v(vsquare) > vsquare_fft_data_blackmanharris.txt
  *plot 20*log10(mag(1*v(vsquare)))
  remzerovec
  write tb_OTA_sp8.raw
 
 
  setplot

.endc


"}
C {vsource.sym} 0 -10 0 0 {name=Vvplse1 value="sin (0 1 xfc)"
format="@name @pinlist @value"

}
