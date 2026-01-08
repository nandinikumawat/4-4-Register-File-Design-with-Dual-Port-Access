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

.INCLUDE 4x1rf.sp

* Voltage sources
V_wa0 addr_wr0 0 0V
V_wa1 addr_wr1 0 0V
VCLK CLK 0 PULSE(0 0.8 0 20p 20p 60p 180p)

V_ra0 addr_rd0 0 0V
V_ra1 addr_rd1 0 0V

Vd0 Data_in0 0 0.8
Vd1 Data_in1 0 0V
Vd2 Data_in2 0 0V
Vd3 Data_in3 0 0V

V_we WE 0 0.8V
V_re RE 0 0.8V

VDD VDD 0 0.8V
VSS VSS 0 0V

* Small 1fF output capacitance for realistic simulation
C1 Data_out 0 2fF
*C2 Data_out1 0 2fF
*C3 Data_out2 0 2fF
*C4 Data_out3 0 2fF
*C2 sum 0 2fF
.OP
.TRAN 0.1p 10ns

*.MEASURE TRAN thl TRIG V(a) VAL=0.35 TD=100p RISE=2 TARG V(y) VAL=0.35 TD=100p FALL=2
*.measure tran freq param= '20/t1'
*.measure power rms power
.END
