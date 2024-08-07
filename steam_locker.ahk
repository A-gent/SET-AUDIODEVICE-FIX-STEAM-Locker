#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Ignore
#NoTrayIcon

IniRead, aDoSteamLock, config.cfg, SWITCHES, FxSoundSteamLogonLockPeriod, 0
GLOBAL DoSteamLock := aDoSteamLock

IniRead, aSteamTree, config.cfg, STEAM, FolderLocation, C:\Program Files (x86)\Steam
GLOBAL SteamTree := aSteamTree
GLOBAL SteamREAL := "steam.exe.real"
GLOBAL SteamREALFile := SteamTree . "\" . SteamREAL
GLOBAL SteamFile := SteamTree . "\steam.exe"

Sleep, 350

If(DoSteamLock="1")
{
    if FileExist(SteamREALFile)
    {

    }
    Else
    {
        FileMove, %SteamFile%, %SteamREALFile%
    }
    Sleep, 250
    FileInstall, steam.exe, %SteamFile%, 1
    ; FileInstall, %A_ScriptDir%\aSteamLockMsg.exe, %SteamFile%, 1
}

ExitApp