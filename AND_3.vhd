----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:50 09/07/2014 
-- Design Name: 
-- Module Name:    AND_3 - Behavioral 
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

entity AND_3 is
		PORT(
		I1 : in std_logic;
		I2 : in std_logic;
		I3 : in std_logic;
		O : out std_logic
		);
end AND_3;

architecture Behavioral of AND_3 is

begin
	O <= I1 AND I2 AND I3;

end Behavioral;

