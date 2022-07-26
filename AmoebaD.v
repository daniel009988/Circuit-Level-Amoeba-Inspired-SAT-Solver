// sat2.cnf
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module AmoebaD(clk, led0, led1, led2, led3, led0_r, led1_b);
    input clk;
    output led0, led1, led2, led3, led0_r, led1_b;
    // parameters:
    integer SG1 = 10;   //100              // in %%; 50 = 5%
    integer SG2 = 10;    // 100
    integer SG3 = 90;      //9
    parameter NUM_CLAUSES = 80;
    parameter NUM_VARIABLES = 50;
    // setting solution:
    wire solution = 1'b0;
    // variables:
    reg  x[NUM_VARIABLES:1];
    // clauses:
    wire c[NUM_CLAUSES:1];
    //auxiliary wires:
    wire F1 [NUM_VARIABLES:1];           // inter (t)
    wire F0 [NUM_VARIABLES:1];           // inter_n (t)
    reg  CONTRA [NUM_VARIABLES:1];       // contra (t)
    wire CONTRA_NEXT [NUM_VARIABLES:1];  // contra (t+1)
    wire CONTRA_IN [NUM_VARIABLES:1];    // contra_mrg (t)
    reg  CONTRA_FLIP [NUM_VARIABLES:1];  // contra_mrg -> SG3 -> flip (t)
    reg [NUM_VARIABLES:1] F1_SG;         // inter (t) -> SG1 -> output
    reg [NUM_VARIABLES:1] F0_SG;         // inter_n (t) -> SG2 -> output
    
    // random number:
    // reg [12:0] random = 13'hF;
    // wire feedback = random[12] ^ random[3] ^ random[2] ^ random[0];
    
    // statistics etc:
    integer clauses_sat;
    integer rem_clauses_sat;
    integer clauses_unsat;
    integer rem_clauses_unsat;
    integer global_minimum = NUM_CLAUSES;
    integer stalecount = 0;
    integer i;
    reg led_reg1 = 1'b0;
    reg led_reg2 = 1'b0;
    reg led_reg3 = 1'b0;
    reg led_reg4 = 1'b0;
    reg led_declining = 1'b0;
    
    // setting up initial variables:
    initial begin
        for (i=1;i<=NUM_VARIABLES;i=i+1)
        begin
            x[i] = $urandom_range(0,1); //1'b0;
            CONTRA_FLIP[i] = 1'b0;
            CONTRA[i] = 1'b0;
            F1_SG[i] = 1'b0;
            F0_SG[i] = 1'b0;
        end
        clauses_sat = 0;
        rem_clauses_sat = 0;
        clauses_unsat = NUM_CLAUSES;
    end
    
    begin
        // flipping logic for vars:
        always @(posedge clk) 
        begin
        //random = {random[11:0],feedback};
        // assign variables:
        if (solution == 1'b0)
                begin
                // Stochastik Gates:
                for (i=1;i<=NUM_VARIABLES;i=i+1)
                begin
                    // SG1:
                    F1_SG[i] = F1[i]; if ($urandom_range(0,1000) < SG1) F1_SG[i] = 1'b1;
                    // SG2:
                    F0_SG[i] = F0[i]; if ($urandom_range(0,1000) < SG2) F0_SG[i] = 1'b0;
                    // SG3:
                    CONTRA_FLIP[i] = CONTRA_IN[i]; if ($urandom_range(0,1000) < SG3) CONTRA_FLIP[i] = 1'b0;
                    // MAJ Gates: (note: we added !x because in the diagram's FF
                    x[i] = (F1_SG[i] & F0_SG[i]) | (F0_SG[i] & (!x[i]^CONTRA_FLIP[i]) ) | (F1_SG[i] & (!x[i]^CONTRA_FLIP[i]) );
                end
                
                // move CONTRA_NEXT -> CONTRA contra_next(t+1) -> contra_in
                // flip it b/c according to diagram, it is after FF
                for (i=1;i<=NUM_VARIABLES;i=i+1)
                    CONTRA[i] = ~CONTRA_NEXT[i];
                
                // count number of satisfied clauses: 
                clauses_sat = 0;
                for (i=1;i<=NUM_CLAUSES;i=i+1)
                    if (c[i] == 1'b1)
                        clauses_sat = clauses_sat + 1;
                clauses_unsat = NUM_CLAUSES - clauses_sat;
                if (clauses_unsat < global_minimum) global_minimum = clauses_unsat;
                
                //stale? adaptive SG Params
                if (clauses_unsat >= rem_clauses_unsat)
                begin
                    stalecount = stalecount + 1;
                    if (stalecount>100000)
                    begin
                        led_declining = 1'b1; //switch on RGB led to how that we got worse
                        SG1 = $urandom_range(0,999);
                        SG2 = $urandom_range(0,999);
                        SG3 = $urandom_range(0,999);
                        stalecount = 0;
                    end
                end else led_declining = 1'b0;
                
                //led status: % sat
                if (clauses_unsat > NUM_CLAUSES/5) led_reg1 = 1'b1;
                if (clauses_unsat > NUM_CLAUSES/25) led_reg2 = 1'b1;
                if (clauses_unsat > NUM_CLAUSES/50) led_reg3 = 1'b1;
                if (clauses_unsat > NUM_CLAUSES/75) led_reg4 = 1'b1;
                
                //rememer # of sat clauses:
                rem_clauses_sat = clauses_sat;
                rem_clauses_unsat = clauses_unsat;
                
                end else 
                begin
                    //we found the solution
                    clauses_sat = NUM_CLAUSES;
                    clauses_unsat = 0;
                end
        end
        
    //VARIABLE CELLS & CLAUSES:
    `include "varcells.v"
    
    //update LEDs:
    assign led0 = led_reg1;
    assign led1 = led_reg2;
    assign led2 = led_reg3;
    assign led3 = led_reg4;
    assign led1_b = led_declining;
    end
endmodule