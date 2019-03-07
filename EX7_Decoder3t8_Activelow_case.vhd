----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 02:29:37 AM
-- Design Name: 
-- Module Name: EX7_Decoder3t8_Activelow_case - Behavioral
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

entity EX7_Decoder3t8_Activelow_case is
    Port (input : in  std_logic_vector (2 downto 0);
          output: out std_logic_vector (7 downto 0) );
end EX7_Decoder3t8_Activelow_case;

architecture Behavioral of EX7_Decoder3t8_Activelow_case is

begin
    main : process(input)
    begin
        case input is
            when "000" =>
                output <= "00000001";
            when "001" =>
                output <= "00000010";
            when "010" =>
                output <= "00000100";
            when "011" =>
                output <= "00001000";
            when "100" =>
                output <= "00010000";
            when "101" =>
                output <= "00100000";
            when "110" =>
                output <= "01000000";
            when "111" =>
                output <= "10000000";
            when others =>
                output <= (others => '0');
         end case;
    end process;

end Behavioral;
