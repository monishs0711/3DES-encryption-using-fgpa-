module Lshift(input [56:1]key_pc1, output reg [28:1]c[16:1], output reg [28:1]d[16:1]);
    integer i;

    always @* begin
        c[1] = {key_pc1[2:28], key_pc1[1]};
        d[1] = {key_pc1[30:56], key_pc1[29]};

        for (i = 2; i <= 16; i = i + 1) begin
            if (i == 1 || i == 2 || i == 9 || i == 16) begin
                c[i] = {c[i-1][2:28], c[i-1][1]};
                d[i] = {d[i-1][2:28], d[i-1][1]};
            end else begin
                c[i] = {c[i-1][3:28], c[i-1][1:2]};
                d[i] = {d[i-1][3:28], d[i-1][1:2]};
            end
        end
    end
endmodule