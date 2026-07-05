v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 20 0 40 {lab=#net1}
N -70 -40 -40 -40 {lab=in}
N -70 20 -70 70 {lab=in}
N -70 70 -40 70 {lab=in}
N -150 20 -70 20 {lab=in}
N 0 20 100 20 {lab=#net1}
N 0 -100 0 -70 {lab=vdd}
N 0 110 -0 140 {lab=gnd}
N -0 -40 50 -40 {lab=vdd}
N 50 -100 50 -40 {lab=vdd}
N 0 -100 50 -100 {lab=vdd}
N -0 70 40 70 {lab=gnd}
N 40 70 40 110 {lab=gnd}
N 0 110 40 110 {lab=gnd}
N -70 -40 -70 20 {lab=in}
N -0 -10 0 20 {lab=#net1}
N -0 -150 0 -100 {lab=vdd}
N -0 100 0 110 {lab=gnd}
N 50 -100 160 -100 {lab=vdd}
N 160 -100 160 -70 {lab=vdd}
N 160 -40 200 -40 {lab=vdd}
N 200 -100 200 -40 {lab=vdd}
N 160 -100 200 -100 {lab=vdd}
N 100 -40 120 -40 {lab=#net1}
N 100 20 100 70 {lab=#net1}
N 100 70 120 70 {lab=#net1}
N 100 -40 100 20 {lab=#net1}
N 160 20 160 40 {lab=out}
N 40 110 160 110 {lab=gnd}
N 160 100 160 110 {lab=gnd}
N 160 70 200 70 {lab=gnd}
N 200 70 200 110 {lab=gnd}
N 160 110 200 110 {lab=gnd}
N 160 20 220 20 {lab=out}
N 160 -10 160 20 {lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -20 -40 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -20 70 0 0 {name=M2
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
C {ipin.sym} -150 20 0 0 {name=p1 lab=in
}
C {ipin.sym} 0 140 0 0 {name=p3 lab=gnd}
C {ipin.sym} 0 -150 0 0 {name=p4 lab=vdd}
C {opin.sym} 220 20 0 0 {name=p2 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 140 -40 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 140 70 0 0 {name=M4
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
