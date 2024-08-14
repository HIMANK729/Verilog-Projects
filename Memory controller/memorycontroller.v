`timescale 1ns/10ps
module memory (DataBus, MemWr, MemRd, Addr);
  inout [63:0] DataBus;
  input MemWr, MemRd;
  input [5:0] Addr;
  reg [63:0] datareg;
  reg [63:0] Mem [0:63];//memory declaration
 
  initial begin
    $readmemh ("input.txt", Mem);
    $display($time,"ns data write process done ");
  end
  
  always @ (MemWr or MemRd or Addr or datareg) begin
    	if (MemWr==1'b1 && MemRd==1'b0) begin
				Mem [Addr] =DataBus;
				datareg=64'hzzzzzzzzzzzzzzzz;
	 	end
	 	else if (MemRd==1'b1)	begin
        		datareg= Mem[Addr];
  
          $display($time,"ns data read Address-%h is %h\n",
                   Addr,datareg);
 
          $display($time,"ns data bus data is %h\n",DataBus);
	 	end
	 	else
			datareg=64'hzzzzzzzzzzzzzzzz;
   end
  assign DataBus = datareg;
  
endmodule