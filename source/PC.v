`timescale 1ns / 1ps

module PC(
    input clk,
    input Reset,
    input PCWre,
    input [31:0] nextIAddr,
    output reg [31:0] currentIAddr
    );
    parameter initaladdr = 32'h00400000;
    parameter endaddr = 32'h00405000;//������ַ
    parameter endaddrto = 32'hFFFFFFF0;//��������ת
    initial currentIAddr <= initaladdr;
    
    always @(posedge clk or negedge Reset) begin
        if(Reset == 0) currentIAddr = initaladdr;//��ʼ��ַ
        else 
        begin
            if(nextIAddr>=endaddr) currentIAddr<=endaddrto ;//����PC����ַ��ֹһֱ���г���bug
            
            if(PCWre == 1&&nextIAddr<endaddr) currentIAddr <= nextIAddr;
            if(PCWre == 0&&nextIAddr<endaddr)currentIAddr <= currentIAddr;
        end
    end
endmodule
