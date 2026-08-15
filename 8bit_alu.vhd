-- Notes: Sel is a 3 bit signal, which gives us the possibility to map out 8 operations
-- Sel = 000 is used as addition.


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu8bit is port (
    A, B    : in std_logic_vector(7 downto 0);
    Sel     : in std_logic_vector(2 downto 0);
    Result  : out std_logic_vector(7 downto 0)
);
end alu8bit;

architecture behavioral of alu8bit is
    begin alu_process: process(A,B,Sel)
    begin
        case Sel is
            when "000" => --When Sel is "000", do the addition of A and B
            Result <= std_logic_vector (unsigned(A) + unsigned(B));
        when others =>
            Result <= (others => '0');
        end case;
    end process alu_process;
end behavioral;