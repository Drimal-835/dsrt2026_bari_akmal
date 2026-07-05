v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -80 0 -60 {lab=#net1}
N -0 -30 50 -30 {lab=#net1}
N 50 -80 50 -30 {lab=#net1}
N 0 -80 50 -80 {lab=#net1}
N -0 -140 40 -140 {lab=vdd}
N 40 -190 40 -140 {lab=vdd}
N 0 -190 40 -190 {lab=vdd}
N 0 -190 0 -170 {lab=vdd}
N -0 20 0 40 {lab=out}
N 0 120 -0 140 {lab=#net2}
N -0 70 50 70 {lab=#net2}
N 50 70 50 120 {lab=#net2}
N 0 120 50 120 {lab=#net2}
N -0 170 50 170 {lab=gnd}
N 50 170 50 220 {lab=gnd}
N 0 220 50 220 {lab=gnd}
N 0 200 0 220 {lab=gnd}
N -70 -30 -40 -30 {lab=in}
N -70 20 -70 70 {lab=in}
N -70 70 -40 70 {lab=in}
N 0 220 0 270 {lab=gnd}
N -0 -230 0 -190 {lab=vdd}
N -100 -140 -40 -140 {lab=vp}
N -130 20 -70 20 {lab=in}
N -90 170 -40 170 {lab=vctrl}
N -0 20 130 20 {lab=out}
N -0 -110 0 -80 {lab=#net1}
N -0 100 0 120 {lab=#net2}
N -70 -30 -70 20 {lab=in}
N 0 -0 -0 20 {lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -20 -30 0 0 {name=M1
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -140 0 0 {name=M2
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} -20 70 0 0 {name=M3
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} -20 170 0 0 {name=M4
W=2
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
C {ipin.sym} -90 170 0 0 {name=p6 lab=vctrl}
C {ipin.sym} -130 20 0 0 {name=p7 lab=in
}
C {ipin.sym} 0 -230 0 0 {name=p8 lab=vdd}
C {ipin.sym} 0 270 0 0 {name=p9 lab=gnd}
C {opin.sym} 130 20 0 0 {name=p2 lab=out}
C {iopin.sym} -100 -140 0 1 {name=p1 lab=vp}
