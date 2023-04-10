-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Apr 10 11:13:28 2023
-- Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.runs/BGMwestern1_synth_1/BGMwestern1_stub.vhdl
-- Design      : BGMwestern1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BGMwestern1 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end BGMwestern1;

architecture stub of BGMwestern1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,addra[4:0],douta[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2022.1";
begin
end;
