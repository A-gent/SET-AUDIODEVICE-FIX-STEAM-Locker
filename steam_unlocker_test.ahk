#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, aSteamTree, config.cfg, STEAM, FolderLocation, C:\Program Files (x86)\Steam
GLOBAL SteamTree := aSteamTree
GLOBAL SteamREAL := "steam.exe.real"
GLOBAL SteamREALFile := SteamTree . "\" . SteamREAL
GLOBAL SteamFile := SteamTree . "\steam.exe"

Sleep, 350


if FileExist(SteamREALFile)
{
    FileDelete, %SteamFile%
    Sleep, 850
    FileMove, %SteamREALFile%, %SteamFile%
}


ExitApp