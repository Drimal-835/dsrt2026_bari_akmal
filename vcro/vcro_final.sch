v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -820 -110 -820 -50 {lab=#net1}
N -690 70 -690 90 {lab=0}
N -820 10 -820 90 {lab=0}
N -820 90 -690 90 {lab=0}
N 330 90 410 90 {lab=0}
N 410 90 410 110 {lab=0}
N -630 -110 -630 -60 {lab=#net1}
N -820 -110 -630 -110 {lab=#net1}
N -660 -20 -660 40 {lab=in}
N -660 -20 -630 -20 {lab=in}
N -690 -20 -690 10 {lab=in}
N -690 -20 -660 -20 {lab=in}
N -630 -0 -630 90 {lab=0}
N -690 90 -630 90 {lab=0}
N -650 -40 -630 -40 {lab=#net2}
N -650 -90 -650 -40 {lab=#net2}
N 950 -90 1270 -90 {lab=#net2}
N -310 10 -310 90 {lab=0}
N -630 90 -310 90 {lab=0}
N -320 -10 -320 40 {lab=in}
N -660 40 -320 40 {lab=in}
N -320 -10 -310 -10 {lab=in}
N -340 -30 -340 70 {lab=#net3}
N -340 -30 -310 -30 {lab=#net3}
N -310 -110 -310 -50 {lab=#net1}
N -630 -110 -310 -110 {lab=#net1}
N -10 -90 -10 -50 {lab=#net2}
N -650 -90 -10 -90 {lab=#net2}
N 10 -110 10 -50 {lab=#net1}
N -310 -110 10 -110 {lab=#net1}
N -10 -30 10 -30 {lab=#net4}
N -10 -10 10 -10 {lab=in}
N -10 -10 -10 40 {lab=in}
N -320 40 -10 40 {lab=in}
N 10 10 10 90 {lab=0}
N -310 90 10 90 {lab=0}
N 310 -90 310 -50 {lab=#net2}
N -10 -90 310 -90 {lab=#net2}
N 310 -30 330 -30 {lab=#net5}
N 330 -110 330 -50 {lab=#net1}
N 10 -110 330 -110 {lab=#net1}
N 310 -10 330 -10 {lab=in}
N 310 -10 310 40 {lab=in}
N -10 40 310 40 {lab=in}
N 330 10 330 90 {lab=0}
N 10 90 330 90 {lab=0}
N 630 -90 630 -50 {lab=#net2}
N 310 -90 630 -90 {lab=#net2}
N 630 -30 650 -30 {lab=#net6}
N 650 -110 650 -50 {lab=#net1}
N 330 -110 650 -110 {lab=#net1}
N 630 -10 650 -10 {lab=in}
N 630 -10 630 40 {lab=in}
N 310 40 630 40 {lab=in}
N 650 10 650 90 {lab=0}
N 410 90 650 90 {lab=0}
N 950 -90 950 -50 {lab=#net2}
N 630 -90 950 -90 {lab=#net2}
N 1270 -90 1270 -50 {lab=#net2}
N 950 -30 970 -30 {lab=#net7}
N 970 -110 970 -50 {lab=#net1}
N 650 -110 970 -110 {lab=#net1}
N 950 -10 970 -10 {lab=in}
N 950 -10 950 40 {lab=in}
N 630 40 950 40 {lab=in}
N 970 10 970 90 {lab=0}
N 650 90 970 90 {lab=0}
N 1270 -30 1270 70 {lab=#net3}
N -340 70 1270 70 {lab=#net3}
N 1270 -30 1290 -30 {lab=#net3}
N 970 -110 1290 -110 {lab=#net1}
N 1290 -110 1290 -50 {lab=#net1}
N 970 90 1290 90 {lab=0}
N 1290 -10 1290 90 {lab=0}
N 1590 -50 1610 -50 {lab=out}
C {vsource.sym} -820 -20 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -690 40 0 0 {name=V2 value="PWL(0 0.05 80n 1.75)" savecurrent=false}
C {code.sym} 60 180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {code_shown.sym} -140 180 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents

.control
save all
tran 0.01n 80n
plot v(out) v(in)
.endc
"}
C {/foss/designs/tugas/xsch/vcro_final/vbias.sym} -480 -30 0 0 {name=x1}
C {/foss/designs/tugas/xsch/vcro_final/cs_inv.sym} -160 -20 0 0 {name=x2}
C {/foss/designs/tugas/xsch/vcro_final/cs_inv.sym} 160 -20 0 0 {name=x3}
C {/foss/designs/tugas/xsch/vcro_final/cs_inv.sym} 480 -20 0 0 {name=x4}
C {/foss/designs/tugas/xsch/vcro_final/cs_inv.sym} 800 -20 0 0 {name=x5}
C {/foss/designs/tugas/xsch/vcro_final/cs_inv.sym} 1120 -20 0 0 {name=x6}
C {gnd.sym} 410 110 0 0 {name=l1 lab=0}
C {lab_pin.sym} 1610 -50 2 0 {name=p1 sig_type=std_logic lab=out}
C {lab_pin.sym} -690 -10 0 0 {name=p2 sig_type=std_logic lab=in}
C {/foss/designs/tugas/xsch/vcro_final/buffer.sym} 1440 -30 0 0 {name=x7}
