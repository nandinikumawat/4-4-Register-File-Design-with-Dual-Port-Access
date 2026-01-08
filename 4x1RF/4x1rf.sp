** Generated for: hspiceD
** Generated on: Apr  7 23:21:30 2025
** Design library name: Nandini
** Design cell name: 4X1RF
** Design view name: schematic


** Library name: Nandini
** Cell name: Project_1_Inverter
** View name: schematic
.subckt Project_1_Inverter output vdd vg vss
xpmos output vg vdd vdd pch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xnmos output vg vss vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends Project_1_Inverter
** End of subcircuit definition.

** Library name: Nandini
** Cell name: and
** View name: schematic
.subckt and a b output vdd vss
xm2 output net1 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net1 b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 output net1 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net2 b vss vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net1 a net2 net2 nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends and
** End of subcircuit definition.

** Library name: Nandini
** Cell name: DECODER_new
** View name: schematic
.subckt DECODER_new a b d0 d1 d2 d3 vdd vss
xi7 net1 vdd a vss Project_1_Inverter
xi6 net2 vdd b vss Project_1_Inverter
xi10 a net2 d2 vdd vss and
xi9 b net1 d1 vdd vss and
xi8 net2 net1 d0 vdd vss and
xi11 a b d3 vdd vss and
.ends DECODER_new
** End of subcircuit definition.

** Library name: Nandini
** Cell name: AND3
** View name: schematic
.subckt AND3 a b c output vdd vss
xm7 output net1 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net3 c vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net2 b net3 net3 nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 a net2 net2 nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm6 output net1 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 net1 a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net1 c vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net1 b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends AND3
** End of subcircuit definition.

** Library name: Nandini
** Cell name: DFF
** View name: schematic
.subckt DFF clk d q vdd vss
xm9 net99 clk net97 net97 nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm30 net95 net93 net96 net96 nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm6 net99 net94 vss vss nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm25 net95 q vss vss nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm11 net94 net97 vss vss nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm21 q net96 vss vss nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm10 net98 net93 net97 net97 nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm29 net100 clk net96 net96 nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm7 net98 d vss vss nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm28 net100 net94 vss vss nch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm8 net93 clk vss vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net99 net93 net97 net97 pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm27 net95 clk net96 net96 pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net99 net94 vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm23 net95 q vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm22 q net96 vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net94 net97 vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm24 net100 net93 net96 net96 pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net98 clk net97 net97 pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net98 d vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm26 net100 net94 vdd vdd pch_svt_mac l=16e-9 nfin=3 w=106e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 net93 clk vdd vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends DFF
** End of subcircuit definition.

** Library name: Nandini
** Cell name: or
** View name: schematic
.subckt or a b output vdd vss
xm2 output net1 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net1 b vss vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 a vss vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 output net1 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net1 b net2 net2 pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net2 a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends or
** End of subcircuit definition.

** Library name: Nandini
** Cell name: 2X1mux
** View name: schematic
.subckt Nandini_2X1mux_schematic in1 in2 output s vdd vss
xi1 s in2 net3 vdd vss and
xi0 in1 net2 net1 vdd vss and
xi2 net1 net3 output vdd vss or
xi3 net2 vdd s vss Project_1_Inverter
.ends Nandini_2X1mux_schematic
** End of subcircuit definition.

** Library name: Nandini
** Cell name: 4X1mux
** View name: schematic
.subckt Nandini_4X1mux_schematic inp0 inp1 inp2 inp3 output s0 s1 vdd vss
xi2 net1 net2 output s0 vdd vss Nandini_2X1mux_schematic
xi1 inp2 inp3 net2 s1 vdd vss Nandini_2X1mux_schematic
xi0 inp0 inp1 net1 s1 vdd vss Nandini_2X1mux_schematic
.ends Nandini_4X1mux_schematic
** End of subcircuit definition.

** Library name: Nandini
** Cell name: 4X1RF
** View name: schematic
xi0 addr_wr0 addr_wr1 net4 net3 net2 net1 vdd vss DECODER_new
xi4 net1 we clk net9 vdd vss AND3
xi3 net2 we clk net8 vdd vss AND3
xi2 net3 we clk net6 vdd vss AND3
xi1 net4 we clk net5 vdd vss AND3
xi8 net9 d3 net13 vdd vss DFF
xi7 net8 d2 net12 vdd vss DFF
xi6 net6 d1 net11 vdd vss DFF
xi5 net5 d0 net10 vdd vss DFF
xi9 net10 net11 net12 net13 net14 addr_rd0 addr_rd1 vdd vss Nandini_4X1mux_schematic
xi10 net14 re data_out vdd vss and
.END

