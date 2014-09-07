----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:45 09/07/2014 
-- Design Name: 
-- Module Name:    EX2 - Behavioral 
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

entity EX2 is
	PORT(
		A: IN STD_LOGIC;
		B: IN STD_LOGIC;
		C: IN STD_LOGIC;
		Y: OUT STD_LOGIC
		); 
end EX2;

architecture Structural of EX2 is
	signal ABar, BBar, CBar : std_logic;
	signal D, E, F, G : std_logic;
	
component not_gate  
	port(
	I: IN std_logic;
	O: OUT std_logic
	);
end component;

component AND_3  
		PORT(
		I1 : in std_logic;
		I2 : in std_logic;
		I3 : in std_logic;
		O : out std_logic
		);
end component;

component OR_4  
		PORT(
		I1 : in std_logic;
		I2 : in std_logic;
		I3 : in std_logic;
		I4 : in std_logic;
		O : out std_logic
		);
end component;

begin
	U1: not_gate PORT MAP(I => A, O => ABar);
	U2: not_gate PORT MAP(I => B, O => BBar);
	U3: not_gate PORT MAP(I => C, O => CBar);
	U4: and_3 PORT MAP(I1 => ABar, I2 => B, I3 => C,O => D);
	U5: and_3 PORT MAP(I1 => A, I2 => BBar, I3 => C,O => E);
	U6: and_3 PORT MAP(I1 => A, I2 => B, I3 => CBar,O => F);
	U7: and_3 PORT MAP(I1 => A, I2 => B, I3 => C,O => G);
	U8: or_4 PORT MAP(I1 => D, I2 => E, I3 => F,I4 => G,O => Y);
end Structural;

