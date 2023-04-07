-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity seq_align_multiple_seq_align_local_reference_V_RAM_1WNR_AUTO_1R1W is 
    generic(
        MEM_TYPE        : string    := "auto"; 
        DataWidth       : integer   := 2; 
        AddressWidth    : integer   := 6;
        AddressRange    : integer   := 64
    ); 
    port (
        address0    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce0         : in std_logic; 
        d0          : in std_logic_vector(DataWidth-1 downto 0); 
        we0         : in std_logic; 
        q0          : out std_logic_vector(DataWidth-1 downto 0);
        address1    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce1         : in std_logic; 
        q1          : out std_logic_vector(DataWidth-1 downto 0);
        address2    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce2         : in std_logic; 
        q2          : out std_logic_vector(DataWidth-1 downto 0);
        address3    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce3         : in std_logic; 
        q3          : out std_logic_vector(DataWidth-1 downto 0);
        address4    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce4         : in std_logic; 
        q4          : out std_logic_vector(DataWidth-1 downto 0);
        address5    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce5         : in std_logic; 
        q5          : out std_logic_vector(DataWidth-1 downto 0);
        address6    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce6         : in std_logic; 
        q6          : out std_logic_vector(DataWidth-1 downto 0);
        address7    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce7         : in std_logic; 
        q7          : out std_logic_vector(DataWidth-1 downto 0);
        address8    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce8         : in std_logic; 
        q8          : out std_logic_vector(DataWidth-1 downto 0);
        address9    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce9         : in std_logic; 
        q9          : out std_logic_vector(DataWidth-1 downto 0);
        address10    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce10         : in std_logic; 
        q10          : out std_logic_vector(DataWidth-1 downto 0);
        address11    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce11         : in std_logic; 
        q11          : out std_logic_vector(DataWidth-1 downto 0);
        address12    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce12         : in std_logic; 
        q12          : out std_logic_vector(DataWidth-1 downto 0);
        address13    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce13         : in std_logic; 
        q13          : out std_logic_vector(DataWidth-1 downto 0);
        address14    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce14         : in std_logic; 
        q14          : out std_logic_vector(DataWidth-1 downto 0);
        address15    : in std_logic_vector(AddressWidth-1 downto 0); 
        ce15         : in std_logic; 
        q15          : out std_logic_vector(DataWidth-1 downto 0);
        reset           : in std_logic; 
        clk             : in std_logic 
    ); 
end entity; 

architecture rtl of seq_align_multiple_seq_align_local_reference_V_RAM_1WNR_AUTO_1R1W is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address3_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address4_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address5_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address6_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address7_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address8_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address9_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address10_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address11_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address12_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address13_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address14_tmp : std_logic_vector(AddressWidth-1 downto 0);
signal address15_tmp : std_logic_vector(AddressWidth-1 downto 0);

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
attribute syn_ramstyle : string; 
attribute ram_style : string;


shared variable ram0 : mem_array; 
attribute syn_ramstyle of ram0 : variable is "auto";
attribute ram_style of ram0 : variable is MEM_TYPE;

shared variable ram1 : mem_array; 
attribute syn_ramstyle of ram1 : variable is "auto";
attribute ram_style of ram1 : variable is MEM_TYPE;

shared variable ram2 : mem_array; 
attribute syn_ramstyle of ram2 : variable is "auto";
attribute ram_style of ram2 : variable is MEM_TYPE;

shared variable ram3 : mem_array; 
attribute syn_ramstyle of ram3 : variable is "auto";
attribute ram_style of ram3 : variable is MEM_TYPE;

shared variable ram4 : mem_array; 
attribute syn_ramstyle of ram4 : variable is "auto";
attribute ram_style of ram4 : variable is MEM_TYPE;

shared variable ram5 : mem_array; 
attribute syn_ramstyle of ram5 : variable is "auto";
attribute ram_style of ram5 : variable is MEM_TYPE;

shared variable ram6 : mem_array; 
attribute syn_ramstyle of ram6 : variable is "auto";
attribute ram_style of ram6 : variable is MEM_TYPE;

shared variable ram7 : mem_array; 
attribute syn_ramstyle of ram7 : variable is "auto";
attribute ram_style of ram7 : variable is MEM_TYPE;

shared variable ram8 : mem_array; 
attribute syn_ramstyle of ram8 : variable is "auto";
attribute ram_style of ram8 : variable is MEM_TYPE;

shared variable ram9 : mem_array; 
attribute syn_ramstyle of ram9 : variable is "auto";
attribute ram_style of ram9 : variable is MEM_TYPE;

shared variable ram10 : mem_array; 
attribute syn_ramstyle of ram10 : variable is "auto";
attribute ram_style of ram10 : variable is MEM_TYPE;

shared variable ram11 : mem_array; 
attribute syn_ramstyle of ram11 : variable is "auto";
attribute ram_style of ram11 : variable is MEM_TYPE;

shared variable ram12 : mem_array; 
attribute syn_ramstyle of ram12 : variable is "auto";
attribute ram_style of ram12 : variable is MEM_TYPE;

shared variable ram13 : mem_array; 
attribute syn_ramstyle of ram13 : variable is "auto";
attribute ram_style of ram13 : variable is MEM_TYPE;

shared variable ram14 : mem_array; 
attribute syn_ramstyle of ram14 : variable is "auto";
attribute ram_style of ram14 : variable is MEM_TYPE;


begin 

memory_access_guard_0: process (address0) 
begin
    address0_tmp <= address0;
--synthesis translate_off
    if (CONV_INTEGER(address0) > AddressRange-1) then
        address0_tmp <= (others => '0');
    else 
        address0_tmp <= address0;
    end if;
--synthesis translate_on
end process;
memory_access_guard_1: process (address1) 
begin
    address1_tmp <= address1;
--synthesis translate_off
    if (CONV_INTEGER(address1) > AddressRange-1) then
        address1_tmp <= (others => '0');
    else 
        address1_tmp <= address1;
    end if;
--synthesis translate_on
end process;
memory_access_guard_2: process (address2) 
begin
    address2_tmp <= address2;
--synthesis translate_off
    if (CONV_INTEGER(address2) > AddressRange-1) then
        address2_tmp <= (others => '0');
    else 
        address2_tmp <= address2;
    end if;
--synthesis translate_on
end process;
memory_access_guard_3: process (address3) 
begin
    address3_tmp <= address3;
--synthesis translate_off
    if (CONV_INTEGER(address3) > AddressRange-1) then
        address3_tmp <= (others => '0');
    else 
        address3_tmp <= address3;
    end if;
--synthesis translate_on
end process;
memory_access_guard_4: process (address4) 
begin
    address4_tmp <= address4;
--synthesis translate_off
    if (CONV_INTEGER(address4) > AddressRange-1) then
        address4_tmp <= (others => '0');
    else 
        address4_tmp <= address4;
    end if;
--synthesis translate_on
end process;
memory_access_guard_5: process (address5) 
begin
    address5_tmp <= address5;
--synthesis translate_off
    if (CONV_INTEGER(address5) > AddressRange-1) then
        address5_tmp <= (others => '0');
    else 
        address5_tmp <= address5;
    end if;
--synthesis translate_on
end process;
memory_access_guard_6: process (address6) 
begin
    address6_tmp <= address6;
--synthesis translate_off
    if (CONV_INTEGER(address6) > AddressRange-1) then
        address6_tmp <= (others => '0');
    else 
        address6_tmp <= address6;
    end if;
--synthesis translate_on
end process;
memory_access_guard_7: process (address7) 
begin
    address7_tmp <= address7;
--synthesis translate_off
    if (CONV_INTEGER(address7) > AddressRange-1) then
        address7_tmp <= (others => '0');
    else 
        address7_tmp <= address7;
    end if;
--synthesis translate_on
end process;
memory_access_guard_8: process (address8) 
begin
    address8_tmp <= address8;
--synthesis translate_off
    if (CONV_INTEGER(address8) > AddressRange-1) then
        address8_tmp <= (others => '0');
    else 
        address8_tmp <= address8;
    end if;
--synthesis translate_on
end process;
memory_access_guard_9: process (address9) 
begin
    address9_tmp <= address9;
--synthesis translate_off
    if (CONV_INTEGER(address9) > AddressRange-1) then
        address9_tmp <= (others => '0');
    else 
        address9_tmp <= address9;
    end if;
--synthesis translate_on
end process;
memory_access_guard_10: process (address10) 
begin
    address10_tmp <= address10;
--synthesis translate_off
    if (CONV_INTEGER(address10) > AddressRange-1) then
        address10_tmp <= (others => '0');
    else 
        address10_tmp <= address10;
    end if;
--synthesis translate_on
end process;
memory_access_guard_11: process (address11) 
begin
    address11_tmp <= address11;
--synthesis translate_off
    if (CONV_INTEGER(address11) > AddressRange-1) then
        address11_tmp <= (others => '0');
    else 
        address11_tmp <= address11;
    end if;
--synthesis translate_on
end process;
memory_access_guard_12: process (address12) 
begin
    address12_tmp <= address12;
--synthesis translate_off
    if (CONV_INTEGER(address12) > AddressRange-1) then
        address12_tmp <= (others => '0');
    else 
        address12_tmp <= address12;
    end if;
--synthesis translate_on
end process;
memory_access_guard_13: process (address13) 
begin
    address13_tmp <= address13;
--synthesis translate_off
    if (CONV_INTEGER(address13) > AddressRange-1) then
        address13_tmp <= (others => '0');
    else 
        address13_tmp <= address13;
    end if;
--synthesis translate_on
end process;
memory_access_guard_14: process (address14) 
begin
    address14_tmp <= address14;
--synthesis translate_off
    if (CONV_INTEGER(address14) > AddressRange-1) then
        address14_tmp <= (others => '0');
    else 
        address14_tmp <= address14;
    end if;
--synthesis translate_on
end process;
memory_access_guard_15: process (address15) 
begin
    address15_tmp <= address15;
--synthesis translate_off
    if (CONV_INTEGER(address15) > AddressRange-1) then
        address15_tmp <= (others => '0');
    else 
        address15_tmp <= address15;
    end if;
--synthesis translate_on
end process;

p_memory_access_r_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            q1 <= ram0(CONV_INTEGER(address1_tmp));
        end if;
    end if;
end process;
p_memory_access_r_2: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce2 = '1') then 
            q2 <= ram1(CONV_INTEGER(address2_tmp));
        end if;
    end if;
end process;
p_memory_access_r_3: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce3 = '1') then 
            q3 <= ram2(CONV_INTEGER(address3_tmp));
        end if;
    end if;
end process;
p_memory_access_r_4: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce4 = '1') then 
            q4 <= ram3(CONV_INTEGER(address4_tmp));
        end if;
    end if;
end process;
p_memory_access_r_5: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce5 = '1') then 
            q5 <= ram4(CONV_INTEGER(address5_tmp));
        end if;
    end if;
end process;
p_memory_access_r_6: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce6 = '1') then 
            q6 <= ram5(CONV_INTEGER(address6_tmp));
        end if;
    end if;
end process;
p_memory_access_r_7: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce7 = '1') then 
            q7 <= ram6(CONV_INTEGER(address7_tmp));
        end if;
    end if;
end process;
p_memory_access_r_8: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce8 = '1') then 
            q8 <= ram7(CONV_INTEGER(address8_tmp));
        end if;
    end if;
end process;
p_memory_access_r_9: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce9 = '1') then 
            q9 <= ram8(CONV_INTEGER(address9_tmp));
        end if;
    end if;
end process;
p_memory_access_r_10: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce10 = '1') then 
            q10 <= ram9(CONV_INTEGER(address10_tmp));
        end if;
    end if;
end process;
p_memory_access_r_11: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce11 = '1') then 
            q11 <= ram10(CONV_INTEGER(address11_tmp));
        end if;
    end if;
end process;
p_memory_access_r_12: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce12 = '1') then 
            q12 <= ram11(CONV_INTEGER(address12_tmp));
        end if;
    end if;
end process;
p_memory_access_r_13: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce13 = '1') then 
            q13 <= ram12(CONV_INTEGER(address13_tmp));
        end if;
    end if;
end process;
p_memory_access_r_14: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce14 = '1') then 
            q14 <= ram13(CONV_INTEGER(address14_tmp));
        end if;
    end if;
end process;
p_memory_access_r_15: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce15 = '1') then 
            q15 <= ram14(CONV_INTEGER(address15_tmp));
        end if;
    end if;
end process;

-- write to all ram
p_memory_access_w_0: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram0(CONV_INTEGER(address0)) := d0; 
            end if;

            q0 <= ram0(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;
p_memory_access_w_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram1(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_2: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram2(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_3: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram3(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_4: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram4(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_5: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram5(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_6: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram6(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_7: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram7(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_8: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram8(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_9: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram9(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_10: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram10(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_11: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram11(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_12: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram12(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_13: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram13(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;
p_memory_access_w_14: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram14(CONV_INTEGER(address0)) := d0; 
            end if;

        end if;
    end if;
end process;

end rtl;
