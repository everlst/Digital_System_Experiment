module sim_1;
    reg  [3:0] ain;
    wire [7:0] seg;
    wire [5:0] dig;
    
    decoder_7seg  uut(ain,seg,dig);
    initial
       begin 
        ain = 0;
       end    
    always #10 ain = ain+1;
endmodule

