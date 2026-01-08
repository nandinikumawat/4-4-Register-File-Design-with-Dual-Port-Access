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

.INCLUDE fc.sp

V1 Clk 0 PULSE(0 0.8V 0 1p 1p 10p 21p)

* Data input (D)
Vd1 Data_in0 0 PULSE(0V 0.8V 0p 20p 20p 360p 760p)
Vd2 Data_in1 0 0
Vd3 Data_in2 0 PULSE(0V 0.8V 0p 20p 20p 360p 760p)
Vd4 Data_in3 0 0

V_aw0 Addr_wr0 0 PULSE(0.8V 0V 760p 2p 2p 750p)
V_aw1 Addr_wr1 0 PULSE(0.8V 0V 760p 2p 2p 750p)


V_ar0 Addr_rd0 0 PULSE(0.8V 0V 760p 2p 2p 750p)
V_ar1 Addr_rd1 0 PULSE(0.8V 0V 760p 2p 2p 750p)

Vwe WE 0 PULSE(0V 0.8V 300p 2p 2p 50p 460p)
Vre RE 0 PULSE(0V 0.8V 300p 2p 2p 50p 460p)

* Power supply
VDD VDD 0 0.8V
VSS VSS 0 0V



* Small 1fF output capacitance for realistic simulation
*C1 Q0 0 2fF
*C2 Q1 0 2fF
*C3 Q2 0 2fF
*C4 Q3 0 2fF
C1 out 0 10fF
.OP
.TRAN 0.1p 1500ps
.END


