library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is port (
Y : out std_logic;
I0 : in std_logic;
I1 : in std_logic;
I2 : in std_logic;
I3 : in std_logic;
Sel : in std_logic_vector(1 downto 0)
);
end mux4to1;

architecture behavioral of mux4to1 is
    begin
        with Sel select
        Y <= 
        I0 when "00",
        I1 when "01",
        I2 when "10",
        I3 when "11",
        '0' when others; -- Safefail
end behavioral