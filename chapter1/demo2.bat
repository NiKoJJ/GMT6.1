REM GMT modern mode batch template
REM Date:    2019-09-02T23:34:25
REM User:    seisman
REM Purpose: Purpose of this script
REM Set a unique session name:
@echo off
set GMT_SESSION_NAME=7492
gmt begin figurename
    gmt coast -Rg -JH15c -Gpurple -Baf -B+t"My First Plot"
gmt end show