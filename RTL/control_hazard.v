module control_hazard (
   op  ,zero , s_m1 , s_m2 , isa_type , stall  , kill  , Rs1D , Rs2D ,RdE ,RdM , RdW,isa_type_e ,isa_type_M ,isa_type_W 
);
input [4:0 ]  Rs1D , Rs2D ,RdE , RdM , RdW ;
input [6:0]   op  ; 
input[1:0] isa_type_e , isa_type_M , isa_type_W ;
input zero ; 
output  [1:0] s_m1 , s_m2 ;
output   [1:0] isa_type; 
output  stall ; 
output  kill ; 

 hazard_decoder_cn h_decode (op , zero , kill , isa_type);
 hazard_cont h_exe (isa_type_e , RdE , Rs1D ,Rs2D , stall , set1_m1 ,set2_m1);
 hazard_cont h_mem (isa_type_M , RdM , Rs1D ,Rs2D , OPEN,set1_m2 ,set2_m2);
 hazard_cont h_write (isa_type_W , RdW , Rs1D ,Rs2D ,OPEN ,set1_m3 ,set2_m3);

 encode_signal h_s1 (set1_m1 ,set1_m2 ,set1_m3 , s_m1);
 encode_signal h_s2 (set2_m1 ,set2_m2 ,set2_m3 , s_m2);


endmodule


module hazard_decoder_cn (op , zero , kill , isa_type);
input [6:0]   op  ; 
input zero ;  
output reg  [1:0] isa_type; 
output reg kill  ; 
always @(*) begin

   isa_type  = 2'b00 ; 
     kill   = 1'b0 ; 
    case (op)
          7'b0000011 :   isa_type = 2'b01   ;            //lw                     
          7'b0110011 :   isa_type = 2'b10   ;            // R type
          7'b0010011 :   isa_type = 2'b10   ;            // I type
          
          7'b1100011 :begin kill = (zero === 1'B1 ) ? 1'b1 : 1'B0  ; isa_type = 2'b11 ;  end              //branch                    
          7'b1101111 : begin  kill = 1'b1  ; isa_type = 2'b11 ; end  
          7'b1100111 : begin  kill = 1'b1 ; isa_type = 2'b11 ; end 
 
        default:  begin  isa_type = 2'b00  ; kill = 1'b0 ;   end 
    endcase
    
end
  
endmodule


module hazard_cont (isa_type , Rd , Rs1D ,Rs2D , stall , set1 ,set2);

input [4:0 ]  Rs1D , Rs2D ,Rd;
input[1:0] isa_type;
output reg stall , set1 ,set2; 


always @(*) begin

  set1 = 1'b0 ;  set2 = 1'b0 ;
  stall = 1'b0 ; 
  if((isa_type != 2'b00)) begin
  stall = (isa_type == 2'b01) ? 1'b1 :1'b0 ;
    if(Rs1D === Rd & Rs1D != 5'b00000) 
    set1 = 1'b1 ; 
    else 
    set1 = 1'b0 ;
    if(Rs2D === Rd & Rs2D != 5'b00000)
    set2 = 1'b1 ; 
    else 
    set2 = 1'b0 ;

  end
  
end  
  
endmodule

module encode_signal (set1 ,set2 ,set3 , s_m);
input set1 ,set2 , set3 ; 
output [1:0] s_m ;
reg [1:0] s ;
  always @ (*) begin
    s = 2'b00 ; 
    if(set1) 
    s = 2'b01 ; 
    else if (set2)
    s = 2'b10;
    else if (set3)
    s = 2'b11 ;
    else 
    s = 2'b00 ;

  end
  assign s_m = s ; 

endmodule


