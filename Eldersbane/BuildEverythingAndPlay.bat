:: Compiles the engine after creating its dependencies using the game DLL 
:: and moves the files in order to execute the .exe file correctly

set EXES=.\Motor-Grupo3\Exes
set GAME_EXES=.\Exes\Assets

cd .\Motor-Grupo3\
call BuildEngine.bat
cd ..

call BuildGameAndPlay.bat
