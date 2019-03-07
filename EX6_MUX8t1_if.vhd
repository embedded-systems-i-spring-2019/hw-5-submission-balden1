----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 02:22:51 AM
-- Design Name: 
-- Module Name: EX6_MUX8t1_if - Behavioral
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

entity EX6_MUX8t1_if is
    Port ( input : in std_logic_vector (7 downto 0);
           sel   : in Std_logic_vector (2 downto 0);
           output: out std_logic );
end EX6_MUX8t1_if;

architecture Behavioral of EX6_MUX8t1_if is

begin
    main : process(input, sel)
    begin
        if (sel = "000") then
                output <= input (0);
        elsif (sel = "001") then
                output <= input (1);
        elsif (sel = "010") then
                output <= input (2);
        elsif (sel = "011") then
                output <= input (3);
        elsif (sel = "100") then
                output <= input (4);
        elsif (sel = "101") then
                output <= input (5);
        elsif (sel = "110") then
                output <= input (6);
        elsif (sel = "111") then
                output <= input (7);
        end if;
     end process;


end Behavioral;
