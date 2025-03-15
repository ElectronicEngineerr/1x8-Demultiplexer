library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Multiplexer is
  Port ( 
			f_in           : in std_logic;
			select_in 	: in std_logic_vector(1 downto 0);
			a_out  	    : out std_logic;
			b_out  	    : out std_logic;
			c_out  	    : out std_logic;
			d_out  	    : out std_logic;
			e_out  	    : out std_logic;
			f_out  	    : out std_logic;
			g_out  	    : out std_logic;
			k_out  	    : out std_logic
  );
end Multiplexer;

architecture Behavioral of Multiplexer is


begin
	process(f_in, select_in)
		begin
			if    (f_in = '0' and select_in = "00") then
				a_out <= f_in;
			elsif (f_in = '0' and select_in = "01") then
				b_out <= f_in;
			elsif (f_in = '0' and select_in = "10") then
				c_out <= f_in;
			elsif (f_in = '0' and select_in = "11") then
				d_out <= f_in;
			elsif (f_in = '1' and select_in = "00") then
				e_out <= f_in;
			elsif (f_in = '1' and select_in = "01") then
				f_out <= f_in;
			elsif (f_in = '1' and select_in = "10") then
				g_out <= f_in;
			elsif (f_in = '1' and select_in = "11") then
				k_out <= f_in;
			end if;
	end process;

end Behavioral;
