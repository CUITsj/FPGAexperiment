width=16;
y2=round(y.*2^(width-3));%����Q13
fig=fopen('signal.coe','w');
fprintf(fig,'memory_initialization_radix=10;\n memory_initialization_vector = \n');
for i = 1:N %������ת��Ϊ�����ʾ
    if y2(i) >= 0
        y2(i) = y2(i);
    else
        y2(i) = 2^width + y2(i);%�����������ʾ���൱�ڶ�����λ��n��2^(n+1)������
    end                                 %����2^15-1=32767���Ǹ�����С��32767��������
end
for i=1:N
    if i==N
         fprintf(fig,'%d,',y2(i)); 
    else
         fprintf(fig,'%d,\r\n',y2(i));
    end
end
fclose(fig);
