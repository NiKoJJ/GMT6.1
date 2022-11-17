@echo off
REM Batch脚本基本用法
REM Date:    2022-11-17T11:18:41
REM User:    tellz
REM Purpose: Purpose of this script
REM Set a unique session name:
REM 以 REM 开头的行是注释行，在脚本执行时会被忽略

REM echo 命令用于显示后面的字符
echo Hello world!

REM 使用 set 命令声明一个变量
set projection="X10c/10c"
set region="0/10/0/10"

REM 在变量名前后加上 % 即可引用该变量的值
echo %projection% %region%

REM 执行 GMT 命令
gmt begin map
gmt basemap -J%projection% -R%region% -Baf

REM 输入数据
REM 有些命令需要读入数据。Bash 中有多种方法可以将数据传递给一个命令：
REM 1. 将数据保存到文件中，并在命令中指定数据文件名
REM    下面的命令会读取文件 input.dat 中的数据
gmt plot input.dat -W1p

REM 2. 通过管道符号 | 将前一个命令的输出作为后一个命令的输入
REM    下面的命令中，echo 命令输出了 5 5，该输出通过管道被传递给了 GMT 命令作为输入
echo 5 5 | gmt plot -Sc0.5c

REM 输出数据
REM 很多命令都会输出一些数据或信息。默认情况下，输出会在终端显示。为了将数据保存到文件中，需要使用重定向符号。
REM 常用的重定向符号主要有两个： > 和 >>
REM   > 表示将数据输出到文件中。若文件不存在，则创建该文件；若文件已存在，则覆盖该文件的原内容；
REM  >> 表示将数据追加到文件中。若文件不存在，则创建该文件；若文件已存在，则将数据追加到原内容的后面；
echo 1 3 Point1 > tmp.txt
echo 2 5 Point2 >> tmp.txt
echo 4 2 Point3 >> tmp.txt
REM 此时文件中有三行内容

REM 将命令的输出保存到变量中
REM Batch 中可以将命令的输出写到文件中，然后用 set /p var=<file 的方式将文件中的内容作为变量的值
gmt info input.dat -I1/1 > tmp.dat
set /p new_region=<tmp.dat

gmt plot input.dat -J%projection% %new_region%

REM 长命令续行符
REM 当一个命令较长时，可以将命令拆分为多行，每行行末用续行符 ^ 表示下一行命令
REM 需要接在当前命令的后面
gmt coast -A1000 -Dc -ECN -W1/1p ^
        -Glightblue -Slightred

gmt end show

REM del 命令用于删除文件
del tmp.txt

REM pause 命令用于暂停命令的执行
REM 双击执行 Batch 脚本，脚本会在结束后自动退出。
REM 为了查看脚本执行过程中是否报错，通常在 Batch 文件最后一行加上 pause
pause