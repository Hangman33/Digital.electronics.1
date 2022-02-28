# Lab 2: Adam Popelka

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![image](https://user-images.githubusercontent.com/99763701/156052054-47a43ff8-9ce3-46ae-9037-17f47c1a268f.png)

   Less than:

   ![image](https://user-images.githubusercontent.com/99763701/156052224-634d1e9f-29a3-4e71-b7f9-08690ad06e26.png)


2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Snímek obrazovky 2022-02-28 173409](https://user-images.githubusercontent.com/99763701/156021295-df1362c6-b701-4601-909b-28a48f867830.png)


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx07**

```vhdl
p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0000"; -- Such as "0000" if ID = xxxx07
        s_a <= "0111";        -- Such as "0111" if ID = xxxx07
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0000, 0111 FAILED" severity error;

 		-- Second test case
        s_b <= "0001"; -- Such as "0000" if ID = xxxx18
        s_a <= "1000";        -- Such as "0111" if ID = xxxx18
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0000, 0111 FAILED" severity error;
        
         -- Third test case
        s_b <= "0111"; -- Such as "0000" if ID = xxxx77
        s_a <= "0111";        -- Such as "0111" if ID = xxxx77
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0000, 0111 FAILED" severity error;
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

```

2. Text console screenshot during your simulation, including reports.

   ![Snímek obrazovky 2022-02-28 205803](https://user-images.githubusercontent.com/99763701/156050220-65616982-a37e-49a6-83cd-00f0f2e8a6ec.png)

3. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/hfSG
