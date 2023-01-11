@Echo Stopping the Windows Update Service ...
@echo off
Net stop wuauserv
@echo ***********************************
@Echo Disabling the Windows Update Service ...
@echo off
sc config "wuauserv" start=disabled
@echo ***********************************
@echo Finished ....
pause