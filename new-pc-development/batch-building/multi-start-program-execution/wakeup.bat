@echo off 

@REM Executable to launch multiple common programs needed to start my day

@REM git-bash
cd C:\Program Files\Git
start git-bash.exe

@REM firefox
cd C:\Program Files\Mozilla Firefox
start firefox.exe

@REM postman
cd C:\Users\gregw\AppData\Local\Postman
start Postman.exe

@REM spotify
cd C:\Users\gregw\AppData\Roaming\Spotify
start Spotify.exe

@REM vscode
cd C:\Users\gregw\AppData\Local\Programs\Microsoft VS Code
start Code.exe

exit

