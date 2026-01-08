
.TEMP 25
*.OPTION INGOLD=2 ARTIST=2 PSF=2 MEASOUT=1 PARHIER=LOCAL PROBE=0 MARCH=2 ACCURACY=1 POST RUNLVL=5
.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file 
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP

* Include the D Flip-Flop subcircuit
.INCLUDE dflipflop.sp

* Power supplies
Vdd VDD 0 DC 0.8
Vss VSS 0 DC 0

* Inputs
* D toggles every 40ps
VD D 0 PULSE(0 0.8 50p 30p 30p 100p 300p)
* CLK periodic clock with 20ps period
VCLK CLK 0 PULSE(0 0.8 0 20p 20p 60p 180p)

* Load capacitance for Q and Q'
CloadQ Q 0 1fF

* Transient analysis for functionality verification
.TRAN 1p 100n

* Measurements
* Verify that Q follows D on the rising edge of CLK

* Output control
.PROBE TRAN V(Q) V(Qn) V(D) V(CLK)

.END


