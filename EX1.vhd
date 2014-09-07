----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Koson Trachu
-- 
-- Create Date:    11:06:29 09/07/2014 
-- Design Name: 
-- Module Name:    EX1 - dataflow 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EX1 is
	PORT(
		A: IN STD_LOGIC;
		B: IN STD_LOGIC;
		C: IN STD_LOGIC;
		Y: OUT STD_LOGIC
		); 
end EX1;

architecture dataflow of EX1 is
	signal ABar : STD_LOGIC;
	signal BBar : STD_LOGIC;
	signal CBar : STD_LOGIC;
	signal D : STD_LOGIC;
	signal E : STD_LOGIC;
	signal F : STD_LOGIC;
	signal G : STD_LOGIC;
begin
	ABar <= not A;
	BBar <= not B;
	CBar <= not C;
	D <= ABar and B and C;
	E <= A and BBar and C;
	F <= A and B and CBar;
	G <= A and B and C;
	Y <= D or E or F or G; 

end dataflow;

