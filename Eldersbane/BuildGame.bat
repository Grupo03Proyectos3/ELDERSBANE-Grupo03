set EXES=.\Motor-Grupo3\Exes\
set GAME_EXES=.\Exes\Assets\

:: Compilar la solucion del juego para generar las DLLs
msbuild "Eldersbane.sln" /p:configuration=Debug
msbuild "Eldersbane.sln" /p:configuration=Release

:: Copia de DLLs a Exes 
XCOPY /y /s .\Bin\GameExport.dll %EXES%
XCOPY /y /s .\Bin\GameExport_d.dll %EXES%

:: Copiar la carpeta de Assets -> NO
:: XCOPY /y /s .\Exes\Assets %EXES%

:: Compila la solucion del motor
cd .\Motor-Grupo3\
msbuild "MiMotor.sln" /p:configuration=Debug
msbuild "MiMotor.sln" /p:configuration=Release

cd ..

:: Mover assets del motor y .exe del motor a Eldersbane
XCOPY /y /s %EXES% %GAME_EXES%
::XCOPY /y /s %EXES%Motor.exe .\Exes\
::XCOPY /y /s %EXES%Motor_d.exe .\Exes\

:: Ejecutar .exe del motor

::@echo off
::start /wait "engine" ".\Exes\Motor_d.exe"
::echo "engine has finished running."

::".\Exes\Assets\Motor.exe" ".\Exes\Assets\resources.cfg"
call ".\Exes\Assets\Motor.exe"

::cmd /c ".\Exes\Motor_d.exe"

