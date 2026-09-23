rem this batch file needs to be run from the folder where the disc image is placed

rem set some base file paths
SET "SOURCE_DIR=C:\z88dk\examples\tatung\SpriteDesigner"
SET "MAME=C:\MAME\ES-DE\Emulators\MAME"
SET "ROMS=C:\MAME\ES-DE\Roms\einstein\EinTK02"
SET "DISCTOOLS=C:\Einstein\DiscTools"

rem boot mame passing in the boot disc to flop 1 and the program disc to flop 2
%MAME%\mame.exe einstein -uimodekey 7_PAD -inipath "%MAME%" -cfg_directory "%MAME%\cfg\einstein\EinTK02\btp" -nowindow -skip_gameinfo -rompath "%ROMS%"  -flop1 "%SOURCE_DIR%\SpriteDesigner.mfi" -window  || goto :error

goto EOF

:error
timeout /t 30
exit /b %errorlevel%

:EOF