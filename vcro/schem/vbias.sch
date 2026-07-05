v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 -60 -20 -30 {lab=vbp}
N -20 -100 20 -100 {lab=vdd}
N 20 -150 20 -100 {lab=vdd}
N -20 -150 20 -150 {lab=vdd}
N -20 -150 -20 -130 {lab=vdd}
N -80 -100 -60 -100 {lab=vbp}
N -80 -100 -80 -60 {lab=vbp}
N -80 -60 -20 -60 {lab=vbp}
N -20 0 20 0 {lab=gnd}
N 20 0 20 40 {lab=gnd}
N -20 40 20 40 {lab=gnd}
N -20 30 -20 40 {lab=gnd}
N -20 40 -20 60 {lab=gnd}
N -110 0 -60 0 {lab=vctrl}
N -130 -100 -80 -100 {lab=vbp}
N -20 -180 -20 -150 {lab=vdd}
N -20 -70 -20 -60 {lab=vbp}
C {sky130_fd_pr/nfet_01v8.sym} -40 0 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -100 0 0 {name=M2
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
C {ipin.sym} -130 -100 0 0 {name=p1 lab=vbp}
C {ipin.sym} -110 0 0 0 {name=p2 lab=vctrl}
C {ipin.sym} -20 -180 0 0 {name=p3 lab=vdd}
C {ipin.sym} -20 60 0 0 {name=p4 lab=gnd}
