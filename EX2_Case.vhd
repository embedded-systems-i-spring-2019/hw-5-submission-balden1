----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 01:48:13 AM
-- Design Name: 
-- Module Name: EX2_Case - Behavioral
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

entity EX2_Case is
    Port ( A_1 : in std_logic;
           A_2 : in std_logic;
           B_1 : in std_logic;
           B_2 : in std_logic;
           D_1 : in std_logic;
           E_out : out std_logic );
end EX2_Case;

architecture Behavioral of EX2_Case is

begin

    main : process(A_1, A_2, B_1, B_2, D_1)
    begin
        case ((A_1 and A_2) or
              (B_1 or B_2) or
              (B_2 and (not D_1))) is
             when '1' => E_out <= '1';
             when others => E_out <= '0';
        end case;
    end process;

end Behavioral;
