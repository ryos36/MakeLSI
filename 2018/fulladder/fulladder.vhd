library IEEE;
use IEEE.std_logic_1164.all;

entity FULLADDER is
port (
    A, B, CIN: in std_logic;
    Q, COUT: out std_logic);
end FULLADDER;

architecture RTL of FULLADDER is
begin
    Q <= (A xor B) xor CIN;
    COUT <= (A and B) or 
            (B and CIN) or
            (CIN and A);
end RTL;
