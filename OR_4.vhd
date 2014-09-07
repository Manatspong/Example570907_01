----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:36:13 09/07/2014 
-- Design Name: 
-- Module Name:    OR_4 - Behavioral 
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

entity OR_4 is
		PORT(
		I1 : in std_logic;
		I2 : in std_logic;
		I3 : in std_logic;
		I4 : in std_logic;
		O : out std_logic
		);
end OR_4;

architecture Behavioral of OR_4 is

begin
		O <= I1 OR I2 OR I3 OR I4;

end Behavioral;

