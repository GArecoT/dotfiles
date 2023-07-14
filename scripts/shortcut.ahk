;Acentos
\::~
ralt::\

;Window Managment Shortcuts
<#q::!F4 ;Close with win+q
<#f::F11 ;Full Screen with win+f
<#d:: ;Toggle maximize with win+d
{
   If WinGetMinMax("A") = 1
   {
	WinRestore "A"

   }Else {
	WinMaximize "A"
}
}

;App opening shortcuts
^!t::Run "wt.exe" ;Open terminal
<#w:: Run "msedge.exe" ;Open edge





