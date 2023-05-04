:: Compiles the engine after creating its dependencies using the game DLL 
:: and moves the files in order to execute the .exe file correctly

set EXES=.\Motor-Grupo3\Exes\
set GAME_EXES=.\Exes\Assets\

cd .\Motor-Grupo3\
call BuildEngine.bat
cd ..

:: Compilar la solucion del juego para generar las DLLs
msbuild "Eldersbane.sln" /p:configuration=Debug
msbuild "Eldersbane.sln" /p:configuration=Release

:: Copia de DLLs a Exes 
XCOPY /y /s /i .\Bin\GameExport.dll %EXES%
XCOPY /y /s /i .\Bin\GameExport_d.dll %EXES%

:: Compila la solucion del motor
cd .\Motor-Grupo3\
msbuild "MiMotor.sln" /p:configuration=Debug
msbuild "MiMotor.sln" /p:configuration=Release

cd ..

:: Mover assets del motor y .exe del motor a Eldersbane
XCOPY /y /s /i .\Motor-Grupo3\Exes .\Exes\

:: Ejecutar .exe del motor
@echo off
cd .\Exes\
call Motor_d.exe
