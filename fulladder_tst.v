`timescale 1ns/1ps

module test;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire cout;  
    wire [3:0] sum;

    fulladder uut(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));

    initial begin
        a = 0000;
        b = 0000;
        cin = 0;

        $dumpfile("addertst.vcd");
        $dumpvars(0, test);

        #10 cin = 1'b1; a = 4'b0001; b = 4'b0010;

        #10 cin = 1'b0; a = 4'b0001; b = 4'b0010;

        #10 cin = 1'b1; a = 4'b0100; b = 4'b0001;

        #10 cin = 1'b0; a = 4'b0100; b = 4'b0001;

        #10 cin = 1'b1; a = 4'b1100; b = 4'b0000;

        #10 cin = 1'b0; a = 4'b1100; b = 4'b0000;

        #20;

        $finish;
    end

endmodule