set EXES=.\Motor-Grupo3\Exes

:: Compilar la solucion del juego para generar las DLLs
msbuild "Eldersbane.sln" /p:configuration=Debug
msbuild "Eldersbane.sln" /p:configuration=Release

:: Copia de DLLs a Exes 
XCOPY /y /s .\Bin\EldersbaneExport.dll %EXES%
XCOPY /y /s .\Bin\EldersbaneExport_d.dll %EXES%

:: Copiar la carpeta de Assets
XCOPY /y /s .\Exes\Assets %EXES%

:: Compila la solucion del motor
cd .\Motor-Grupo3\
msbuild "MiMotor.sln" /p:configuration=Debug
msbuild "MiMotor.sln" /p:configuration=Release
