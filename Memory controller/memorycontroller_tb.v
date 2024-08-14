module tb;
	reg MemWr;
	reg MemRd;
	reg [5:0] Addr;
	wire [63:0] DataBus;
	reg [63:0] Mem [0:63];

memory uut (
		.DataBus(DataBus),
  		.MemWr(MemWr),
  		.MemRd(MemRd),
		.Addr(Addr)
	 );

  initial begin

		MemWr = 0;
		MemRd = 0;
		Addr = 0;

		#20;
		MemRd = 1;
		MemWr = 0;
		Addr = 6'h00;
    	#10 $display(" Memory is read from Address %h----%h\n",Addr,DataBus);
      	#20;
		Addr = 6'h01;
		#10 $display(" Memory is read from Address %h---%h\n",Addr,DataBus);
		#20;
		Addr = 6'h02;
		#10 $display(" Memory is read from Address %h---%h\n",Addr,DataBus);
		#20;
		Addr = 6'h03;
		#10 $display(" Memory is read from Address %h---%h\n",Addr,DataBus);
		#20;
		Addr = 6'h04;
		#10 $display(" Memory is read from Address %h--%h\n",Addr,DataBus);
		#20;
		Addr = 6'h05;
		#10 $display(" Memory is read from Address %h--%h\n",Addr,DataBus);
		#20;
		Addr = 6'h06;
		#10 $display(" Memory is read from Address %h---%h\n",Addr,DataBus);
		#10 $stop;
  end
  initial 
    begin		
      $dumpfile("dump.vcd"); 
      $dumpvars;            
   end
endmodule