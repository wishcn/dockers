set CMD=docker run -d --name windev --privileged 
set CMD=%CMD% -v %~dp0/../PhpstormProjects:/w/xxstop/PhpstormProjects
set CMD=%CMD% -v %~dp0/root/.tmux.conf:/root/.tmux.conf
set CMD=%CMD% xxstop/windev 

echo %CMD%

%CMD%

%~dp0/dev.sh
