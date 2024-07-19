@echo off
REM 현재 Git 해시를 가져와서 버전 파일에 작성
for /f "delims=" %%i in ('git rev-parse --short HEAD') do set GIT_HASH=%%i

REM 해시를 파일에 작성
echo #define GIT_HASH "%GIT_HASH%" > ..\Core\Inc\version.h
