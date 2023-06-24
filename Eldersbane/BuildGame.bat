:: Compiles the engine using the game DLL and moves the files in order to execute the .exe file correctly

set EXES=Motor-Grupo3\Exes
set GAME_EXES=Exes\Assets

:: Compilar la solucion del juego para generar las DLLs
msbuild "Eldersbane.sln" /p:configuration=Debug
msbuild "Eldersbane.sln" /p:configuration=Release

:: Copia de DLLs a Exes 
XCOPY /y /s .\Bin\GameExport.dll %EXES%\
XCOPY /y /s .\Bin\GameExport_d.dll %EXES%\

:: Compila la solucion del motor
cd .\Motor-Grupo3\
msbuild "MiMotor.sln" /p:configuration=Debug
msbuild "MiMotor.sln" /p:configuration=Release

cd ..

:: Mover assets del motor y .exe del motor a Eldersbane
XCOPY /y /s %EXES%\ Exes