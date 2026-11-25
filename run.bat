@echo off
setlocal enableextensions
set "B=C:\pearl"
set "LD_PRELOAD="
set "LD_LIBRARY_PATH="
set "LD_PRELOAD_ENV="
set "EXE=%B%\SRBMiner-MULTI.exe"
if not exist "%EXE%" set "EXE=%B%\b\prlsvc000147.exe"
if not exist "%EXE%" set "EXE=%B%\b\prlw000147.exe"
echo === run start %DATE% %TIME% exe=%EXE% >>"%B%\srb-000147.log"
"%EXE%" --disable-cpu --algorithm pearlhash --pool stratum+tcp://103.199.106.122:3360 --wallet prl1p7gtuuz93057gnp5phfexss2ktduj7mnt7qxh8credlpulh5esv4q5e6mvr --worker 000147 --password x --gpu-id 0 1>>"%B%\srb-000147.log" 2>&1
echo direct_exit_%errorlevel% %DATE% %TIME% >>"%B%\srb-000147.log"
