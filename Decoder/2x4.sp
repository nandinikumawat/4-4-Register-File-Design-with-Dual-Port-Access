** Generated for: hspiceD
** Generated on: Apr  8 22:07:25 2025
** Design library name: Nandini
** Design cell name: DECODER_new
** Design view name: schematic


** Library name: Nandini
** Cell name: Project_1_Inverter
** View name: schematic
.subckt Project_1_Inverter output vdd vg vss
xpmos output vg vdd vdd pch_svt_mac l=16e-9 nfin=18 w=826e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xnmos output vg vss vss nch_svt_mac l=16e-9 nfin=12 w=538e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends Project_1_Inverter
** End of subcircuit definition.

** Library name: Nandini
** Cell name: and
** View name: schematic
.subckt and a b output vdd vss
xm2 output net1 vdd vdd pch_svt_mac l=16e-9 nfin=6 w=250e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net1 b vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 a vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 output net1 vss vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net2 b vss vss nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net1 a net2 net2 nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends and
** End of subcircuit definition.

** Library name: Nandini
** Cell name: DECODER_new
** View name: schematic
xi7 net1 vdd a vss Project_1_Inverter
xi6 net2 vdd b vss Project_1_Inverter
xi10 a net2 d2 vdd vss and
xi9 b net1 d1 vdd vss and
xi8 net2 net1 d0 vdd vss and
xi11 a b d3 vdd vss and
.END

