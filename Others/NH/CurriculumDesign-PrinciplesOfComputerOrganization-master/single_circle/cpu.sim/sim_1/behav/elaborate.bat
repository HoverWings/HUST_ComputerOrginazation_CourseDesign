@echo off
set xv_path=D:\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 0d57339caf7e4f4c929dc3ec41b4e9a3 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot simu_top_behav xil_defaultlib.simu_top xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
