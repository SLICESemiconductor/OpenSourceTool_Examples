v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 20 -260 40 {
lab=GND}
N -260 -80 -260 -40 {
lab=vssa}
N -160 20 -120 20 {
lab=vssa}
N -260 -160 -260 -140 {lab=#net1}
N -260 -160 -120 -160 {lab=#net1}
N -120 -160 -120 -40 {lab=#net1}
N -120 -20 -120 20 {lab=vssa}
C {noconn.sym} 20 -60 2 0 {name=l2}
C {sg13g2_IOPadAnalog.sym} -140 -140 0 0 {name=xesd
xschematic=sg13g2_IOPadAnalog.sch
xschematic=sg13g2_IOPadAnalog_shrt.sch

schematic=sg13g2_IOPadAnalog.sch
spice_sym_def="tcleval(.include /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"
tclcommand="tcleval(textwindow /home/slice/xschem/tb_OTA_1stage_ihp/PadRing/sg13g2_IOPadAnalog_RC.spice)"}
C {devices/vsource.sym} -260 -10 0 0 {name=Vvssa value=0
format="@name @pinlist @value"}
C {devices/gnd.sym} -260 40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -260 -60 3 1 {name=p6 sig_type=std_logic lab=vssa

}
C {devices/lab_wire.sym} -140 20 2 1 {name=p1 sig_type=std_logic lab=vssa

}
C {devices/vsource.sym} -260 -110 0 0 {name=Vvdda value="xvdda"
format="@name @pinlist @value"}
C {noconn.sym} 20 -20 2 0 {name=l3}
