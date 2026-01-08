** Run Inverter file

.TEMP 25
*.OPTION INGOLD=2 ARTIST=2 PSF=2 MEASOUT=1 PARHIER=LOCAL PROBE=0 MARCH=2 ACCURACY=1 POST RUNLVL=5
.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file 
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP

.INCLUDE 4x4rf.sp

* Clock - 180ps period (same as your VCLK)
V1 Clk 0 PULSE(0 0.8V 500p 17p 22p 0.8n 1.6n)

* Data input (D)
V2 Data_in0 0 PULSE(0.8V 0V 100p 22p 17p 0.5n 1.2n)
V3 Data_in1 0 PULSE(0V 0.8V 100p 17p 22p 0.5n 1.2n)
V4 Data_in2 0 PULSE(0V 0.8V 100p 17p 22p 0.5n 1.2n)
V5 Data_in3 0 PULSE(0.8V 0V 100p 22p 17p 0.5n 1.2n)


V6 Addr_wr0 0 PULSE(0V 0.8V 200p 17p 22p 0.5n 1.2n)
V7 Addr_wr1 0 PULSE(0V 0.8V 400p 22p 17p 0.5n 1.2n)


V8 Addr_rd0 0 PULSE(0V 0.8V 200p 17p 22p 0.5n 1.2n)
V9 Addr_rd1 0 PULSE(0V 0.8V 200p 17p 22p 0.5n 1.2n)

V10 WE 0 PULSE(0V 0.8V 50p 17p 22p 0.5n 1.2n)
V11 RE 0 PULSE(0.8V 0V 50p 22p 17p 0.5n 1.2n)


* Power supply
V12 VDD 0 0.8V
V13 VSS 0 0V


* Small 1fF output capacitance for realistic simulation
*C1 Q0 0 2fF
*C2 Q1 0 2fF
*C3 Q2 0 2fF
*C4 Q3 0 2fF
.OP
.TRAN 0.1p 100ns

*.MEASURE TRAN thl TRIG V(a) VAL=0.35 TD=100p RISE=2 TARG V(y) VAL=0.35 TD=100p FALL=2
*.measure tran freq param= '20/t1'
*.measure power rms power
.END
