#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Ignore
#NoTrayIcon
OnExit, CloseLabel

FileInstall, aSteamLockMsg.bat, %A_ScriptDir%\aSteamLockMsg.bat, 1

MsgBox, 262192, [FxSound-FIX]: STEAM LOCK IN PLACE, The FxSound-Fix Tool is still busy working.`nPlease wait {25 SECONDS} for it to complete`, and then you may launch STEAM! `n`n`nIf you do not close this messagebox`, it automatically dismisses`nitself in {25 seconds} so you easily know when this amount of time has passed., 25
ExitApp


CloseLabel:
Run, %A_ScriptDir%\aSteamLockMsg.bat
Exit