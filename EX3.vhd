----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 02:06:56 AM
-- Design Name: 
-- Module Name: EX3 - Behavioral
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

entity EX3 is
    Port ( A_1 : in std_logic;
           A_2 : in std_logic;
           B_1 : in std_logic;
           B_2 : in std_logic;
           D_1 : in std_logic;
           E_out : out std_logic );
end EX3;

architecture Behavioral of EX3 is
    signal A, B, C : std_logic;
begin
    A <= A_1 and A_2;
    B <= B_1 or B_2;
    C <= B_2 and (not D_1);
    E_out <= (A or B or C);

end Behavioral;
