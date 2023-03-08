-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Tue Dec 20 13:43:26 2022
-- Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/workspace/VIVADO/ProgHw_VGA_V1.5/ProgHw_VGA_V1.5.gen/sources_1/ip/sprite_Football/sprite_Football_stub.vhdl
-- Design      : sprite_Football
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sprite_Football is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end sprite_Football;

architecture stub of sprite_Football is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,addra[6:0],douta[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2022.1";
begin
end;
