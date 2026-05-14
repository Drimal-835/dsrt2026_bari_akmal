v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 -50 -120 -40 {lab=in}
N -80 -50 -70 -50 {lab=in}
N -120 20 -120 70 {lab=GND}
N -30 -10 -30 -0 {lab=out}
N -30 -90 10 -90 {lab=#net1}
N -170 20 -170 70 {lab=GND}
N -30 70 10 70 {lab=GND}
N -170 -90 -170 -40 {lab=#net1}
N -30 -90 -30 -80 {lab=#net1}
N -170 -90 -30 -90 {lab=#net1}
N 10 -90 10 -50 {lab=#net1}
N -30 -50 10 -50 {lab=#net1}
N -30 30 10 30 {lab=GND}
N 10 30 10 70 {lab=GND}
N -30 60 -30 70 {lab=GND}
N -90 70 -30 70 {lab=GND}
N -30 -20 -30 -10 {lab=out}
N -170 70 -120 70 {lab=GND}
N -80 30 -70 30 {lab=in}
N -80 -50 -80 30 {lab=in}
N -120 -50 -80 -50 {lab=in}
N -30 -10 20 -10 {lab=out}
N -90 70 -90 90 {lab=GND}
N -120 70 -90 70 {lab=GND}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -50 30 0 0 {name=XM1
W=3
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -50 -50 0 0 {name=XM2
W=9
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -120 -10 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -170 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} -120 -50 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 20 -10 2 0 {name=p2 sig_type=std_logic lab=out}
C {gnd.sym} -90 90 0 0 {name=GND
lab=GND}
C {code.sym} 90 80 0 0 {name=TT_MODELS
only_toplevel=true
format=tcleval( @value)"
value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {code_shown.sym} 80 -110 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc V2 0 1.8 0.01
plot in out
op
.endc
"}
