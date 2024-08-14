`timescale 1ns/1ps
module ham_encoder(data,enc_ham_data);
  input [3:0]data;
  output [6:0] enc_ham_data;
  
  wire [3:0]data;
  wire [6:0] enc_ham_data;
   
  assign enc_ham_data[0]=data[0]^data[1]^data[3];
  assign enc_ham_data[1]=data[0]^data[2]^data[3];
  assign enc_ham_data[2]=data[0];
  assign enc_ham_data[3]=data[1]^data[2]^data[3];
  assign enc_ham_data[4]=data[1];
  assign enc_ham_data[5]=data[2];
  assign enc_ham_data[6]=data[3];
    
endmodule
  
  