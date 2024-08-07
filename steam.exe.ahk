#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Ignore
#NoTrayIcon


GLOBAL SteamTree := "C:\Program Files (x86)\Steam"
GLOBAL SteamREAL := "steam.exe.real"
GLOBAL SteamREALFile := SteamTree . "\" . SteamREAL
GLOBAL SteamFile2 := SteamTree . "\steam.exe"




FileInstall, aSteamLockMsg.exe, %A_ScriptDir%\aSteamLockMsg.exe, 1
Sleep, 250
Run, %A_ScriptDir%\aSteamLockMsg.exe
ExitApp