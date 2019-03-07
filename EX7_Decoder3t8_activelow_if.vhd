----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 02:36:51 AM
-- Design Name: 
-- Module Name: EX7_Decoder3t8_activelow_if - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EX7_Decoder3t8_activelow_if is
    Port (input : in  std_logic_vector (2 downto 0);
          output: out std_logic_vector (7 downto 0) );
end EX7_Decoder3t8_activelow_if;

architecture Behavioral of EX7_Decoder3t8_activelow_if is

begin
    main : process(input)
    begin
        if (input = "000") then
            output <= "00000001";
        elsif (input = "001") then
            output <= "00000010";
        elsif (input = "010") then
            output <= "00000100";            
        elsif (input = "011") then
            output <= "00001000";
        elsif (input = "100") then
            output <= "00010000";
        elsif (input = "101") then
            output <= "00100000";
        elsif (input = "110") then
            output <= "01000000";
        elsif (input = "111") then
            output <= "10000000";
        else
            output <= (others => '0');
        end if;
    end process;
end Behavioral;
