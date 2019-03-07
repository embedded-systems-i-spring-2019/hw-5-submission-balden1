----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 02:12:39 AM
-- Design Name: 
-- Module Name: EX6_MUX8t1_case - Behavioral
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

entity EX6_MUX8t1_case is
    Port ( input : in std_logic_vector (7 downto 0);
           sel   : in Std_logic_vector (2 downto 0);
           output: out std_logic );
end EX6_MUX8t1_case;

architecture Behavioral of EX6_MUX8t1_case is

begin
    
    main : process(input, sel)
    begin
        case sel is
            when "000" =>
                output <= input (0);
            when "001" =>
                output <= input (1);
            when "010" =>
                output <= input (2);
            when "011" =>
                output <= input (3);
            when "100" =>
                output <= input (4);
            when "101" =>
                output <= input (5);
            when "110" =>
                output <= input (6);
            when "111" =>
                output <= input (7);
        end case;
     end process;

end Behavioral;
