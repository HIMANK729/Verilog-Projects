// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module test_fifo;//no ports
  reg clk,reset;
  reg wr_en,rd_en;
  reg [7:0]din;
  wire [7:0]dout;
  wire full,empty;
  
  fifo UUT(clk,reset,wr_en,rd_en,din,dout,full,empty); //instantiation

  initial begin
    clk =0;
    $display("clock initialize---------------");
      
  end
  
  task rst;
    begin
    #10  reset = 1;
      $display("reset initialize---------------");
    
      #20  reset = 0;//20 ns delay
         end
  endtask
  
  always #5 clk = ~clk;//T=10 ns, f=100Mhz
  
  task wr_rd_init;
    begin
    	wr_en =0;
      	rd_en =0;
      	din = 0;
      $display("write read initialize---------------");
    
    end
  endtask
  
  task write;
    input [7:0]wdata;
    begin
       @(posedge clk)
      begin
        wr_en =  1;
        din =  wdata;
      end
    end
  endtask
  
  task write16;
    begin
      write(8'hff);
      write(8'hfe);
      write(8'hfd);
      write(8'hfc);
      write(8'hfb);
      write(8'hfa);
      write(8'hf9);
      write(8'hf8);
      write(8'hf7);
      write(8'hf6);
      write(8'hf5);
      write(8'hf4);
      write(8'hf3);
      write(8'hf2);
      write(8'hf1);
      write(8'hf0);
      write(8'h11);
      
    end
  endtask
  
  task endwrite;
    begin
      wr_en = 0;
      din =  0;
    end
  endtask
  
  //read process
  task read;
    begin
      @(posedge clk)
      begin
        rd_en = 1;
      end
    end
  endtask
  
  task read16;
    begin
      read;read;read;read;
      read;read;read;read;
      read;read;read;read;
      read;read;read;read;
      
    end
  endtask
  
  task endread;
    begin
       @(posedge clk)
      begin
        rd_en = 0;
      end
    end
  endtask
  
  initial begin
    $display("start--- initialize---------------");
    
    rst;
    wr_rd_init;
    write16;
    endwrite;
    #2 read16;
    #10 endread;
    $display("stopped---------------");
    
    #10 $stop;//Stop the simulation
        
  end
  
  //waveform generation
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,test_fifo);
  end
endmodule