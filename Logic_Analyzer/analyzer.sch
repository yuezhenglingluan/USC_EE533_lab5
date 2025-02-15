VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Data_input(71:0)
        SIGNAL Enable_write
        SIGNAL Data_output(71:0)
        SIGNAL Full_Stop
        SIGNAL XLXN_6(71:0)
        SIGNAL clk
        SIGNAL reset
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL Enable_read
        SIGNAL Fifo_Empty
        PORT Input Data_input(71:0)
        PORT Input Enable_write
        PORT Output Data_output(71:0)
        PORT Output Full_Stop
        PORT Input clk
        PORT Input reset
        PORT Input Enable_read
        PORT Output Fifo_Empty
        BEGIN BLOCKDEF block_memory
            TIMESTAMP 2025 2 15 7 25 50
            RECTANGLE N 32 32 544 672 
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 144 32 144 
            LINE N 0 240 32 240 
            LINE N 0 368 32 368 
            LINE N 144 704 144 672 
            BEGIN LINE W 576 80 544 80 
            END LINE
            LINE N 576 208 544 208 
            LINE N 576 432 544 432 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 block_memory
            PIN din(71:0) Data_input(71:0)
            PIN wr_en Enable_write
            PIN rd_en Enable_read
            PIN clk clk
            PIN rst reset
            PIN dout(71:0) Data_output(71:0)
            PIN full Full_Stop
            PIN empty Fifo_Empty
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Data_input(71:0)
            WIRE 640 640 800 640
            WIRE 800 640 800 720
            WIRE 800 720 1792 720
        END BRANCH
        IOMARKER 640 640 Data_input(71:0) R180 28
        BEGIN BRANCH Enable_write
            WIRE 640 1120 800 1120
            WIRE 800 784 1792 784
            WIRE 800 784 800 1120
        END BRANCH
        IOMARKER 640 1120 Enable_write R180 28
        BEGIN BRANCH Data_output(71:0)
            WIRE 2368 720 2720 720
            WIRE 2720 640 2880 640
            WIRE 2720 640 2720 720
        END BRANCH
        IOMARKER 2880 640 Data_output(71:0) R0 28
        BEGIN BRANCH Full_Stop
            WIRE 2368 848 2624 848
            WIRE 2624 848 2720 848
            WIRE 2720 848 2720 1120
            WIRE 2720 1120 2880 1120
        END BRANCH
        IOMARKER 2880 1120 Full_Stop R0 28
        BEGIN INSTANCE XLXI_2 1792 640 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 640 1200 800 1200
            WIRE 800 1200 1296 1200
            WIRE 1296 1008 1296 1200
            WIRE 1296 1008 1792 1008
        END BRANCH
        IOMARKER 640 1200 clk R180 28
        BEGIN BRANCH reset
            WIRE 960 1488 1936 1488
            WIRE 1936 1344 1936 1488
        END BRANCH
        IOMARKER 960 1488 reset R180 28
        BEGIN BRANCH Enable_read
            WIRE 1168 880 1792 880
        END BRANCH
        IOMARKER 1168 880 Enable_read R180 28
        BEGIN BRANCH Fifo_Empty
            WIRE 2368 1072 2576 1072
            WIRE 2576 1072 2576 1360
            WIRE 2576 1360 2736 1360
        END BRANCH
        IOMARKER 2736 1360 Fifo_Empty R0 28
    END SHEET
END SCHEMATIC
