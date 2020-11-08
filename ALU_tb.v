module testb;
//Inputs
 reg[7:0] A,B;
 reg[3:0] ALU_Sel;

//Outputs
 wire[7:0] ALU_Out;
 wire CarryOut;
 // Verilog code for ALU
 integer i;
 integer x;
 integer z;
 alu A1(
            A,B,  // ALU 8-bit Inputs
            ALU_Sel,// ALU Selection
            ALU_Out, // ALU 8-bit Output
            CarryOut // Carry Out Flag
     );

TriBuff T1 (en1, rst1, In1, A);
TriBuff T2 (en2, rst2, ALU_Out, Ou2);
accum A1 (en3, rst3, ALU_Out, B)
    initial begin
    ALU_Sel <= 4'b0;
      for (x = 0; x <= 15; x = x + 1) begin
        In1 <= x;
        for (z = 0 z<=15; z=z+1) begin
        ALU_Sel = ALU_Sel + 1
          for (i=0;i<=15;i=i+1)
          begin
           ALU_Sel = ALU_Sel + 8'h01;
        end;
      end
    end
endmodule
