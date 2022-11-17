@echo off
REM Batch�ű������÷�
REM Date:    2022-11-17T11:18:41
REM User:    tellz
REM Purpose: Purpose of this script
REM Set a unique session name:
REM �� REM ��ͷ������ע���У��ڽű�ִ��ʱ�ᱻ����

REM echo ����������ʾ������ַ�
echo Hello world!

REM ʹ�� set ��������һ������
set projection="X10c/10c"
set region="0/10/0/10"

REM �ڱ�����ǰ����� % �������øñ�����ֵ
echo %projection% %region%

REM ִ�� GMT ����
gmt begin map
gmt basemap -J%projection% -R%region% -Baf

REM ��������
REM ��Щ������Ҫ�������ݡ�Bash ���ж��ַ������Խ����ݴ��ݸ�һ�����
REM 1. �����ݱ��浽�ļ��У�����������ָ�������ļ���
REM    �����������ȡ�ļ� input.dat �е�����
gmt plot input.dat -W1p

REM 2. ͨ���ܵ����� | ��ǰһ������������Ϊ��һ�����������
REM    ����������У�echo ��������� 5 5�������ͨ���ܵ������ݸ��� GMT ������Ϊ����
echo 5 5 | gmt plot -Sc0.5c

REM �������
REM �ܶ���������һЩ���ݻ���Ϣ��Ĭ������£���������ն���ʾ��Ϊ�˽����ݱ��浽�ļ��У���Ҫʹ���ض�����š�
REM ���õ��ض��������Ҫ�������� > �� >>
REM   > ��ʾ������������ļ��С����ļ������ڣ��򴴽����ļ������ļ��Ѵ��ڣ��򸲸Ǹ��ļ���ԭ���ݣ�
REM  >> ��ʾ������׷�ӵ��ļ��С����ļ������ڣ��򴴽����ļ������ļ��Ѵ��ڣ�������׷�ӵ�ԭ���ݵĺ��棻
echo 1 3 Point1 > tmp.txt
echo 2 5 Point2 >> tmp.txt
echo 4 2 Point3 >> tmp.txt
REM ��ʱ�ļ�������������

REM �������������浽������
REM Batch �п��Խ���������д���ļ��У�Ȼ���� set /p var=<file �ķ�ʽ���ļ��е�������Ϊ������ֵ
gmt info input.dat -I1/1 > tmp.dat
set /p new_region=<tmp.dat

gmt plot input.dat -J%projection% %new_region%

REM ���������з�
REM ��һ������ϳ�ʱ�����Խ�������Ϊ���У�ÿ����ĩ�����з� ^ ��ʾ��һ������
REM ��Ҫ���ڵ�ǰ����ĺ���
gmt coast -A1000 -Dc -ECN -W1/1p ^
        -Glightblue -Slightred

gmt end show

REM del ��������ɾ���ļ�
del tmp.txt

REM pause ����������ͣ�����ִ��
REM ˫��ִ�� Batch �ű����ű����ڽ������Զ��˳���
REM Ϊ�˲鿴�ű�ִ�й������Ƿ񱨴�ͨ���� Batch �ļ����һ�м��� pause
pause