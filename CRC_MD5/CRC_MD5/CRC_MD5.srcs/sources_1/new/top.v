`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/26 21:00:23
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
        input rst,
        input clk,
        output [31:0] out_a,out_b,out_c,out_d,
        output ready
       
);

reg [31:0] in_data = 1000;
reg ena = 1;
reg wea = 0;
reg [3:0] addra = 1;
reg dina;

MD5 md5(
.rst(rst),
.clk(clk),
.in_data(in_data),
.out_a(out_a),
.out_b(out_b),
.out_c(out_c),
.out_d(out_d),
.ready(ready)
);

/*blk_mem_gen_0  blk_mem_gen_m0
    (
        .clka(clk),                //BRAM ����ʱ���ź�
        .ena(ena),                  //BRAM ʱ��ʹ���ź�
        .wea(wea),                  //дʹ���ź�
        .addra(addra),              //��ַ�ź�
        .dina(dina),                //��������ӿ�   д��
        .douta(in_data)               //��������ӿ�   ����

    );
*/
endmodule
