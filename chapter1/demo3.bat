gmt begin map pdf,png
REM GMT��Windows�´������Ĵ���һЩ��֪BUG
REM ��Ҫ���� PS_CHAR_ENCODING Ϊ Standard+ ���ƹ���һBUG
gmt set PS_CHAR_ENCODING Standard+
gmt set FONT_TITLE 25p,41,black
gmt set FONT_LABEL 15p,39,black

echo 2 3.5 25p,39,black ��������  > tmp
echo 2 2.5 25p,40,blue  ���ķ��� >> tmp
echo 2 1.5 25p,41,red   ���ĺ��� >> tmp
echo 2 0.5 25p,42,green ���Ŀ��� >> tmp
echo 4 3.5 25p,43,black �������� >> tmp
echo 5 3.5 25p,44,blue  ���ķ��� >> tmp
echo 6 3.5 25p,45,red   ���ĺ��� >> tmp
echo 7 3.5 25p,46,green ���Ŀ��� >> tmp

gmt text tmp -R0/8/0/4 -JX12c/4c -Bxaf+l"X��" -Byaf+l"Y��" -BWSen+t"���ı���" -F+f
del tmp
gmt end