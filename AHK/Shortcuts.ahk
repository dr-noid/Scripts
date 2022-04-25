/*
    author: https://www.github.com/dr-noid
    repo: https://www.github.com/dr-noid/Scripts
*/

#include Runner.ahk
#SingleInstance Force
#KeyHistory 0
#NoEnv

runner := new Runner()

; Launch Windows Terminal
; Left Windows + `(Grave)
<#`::
    runner.terminal()
Return

; LAlt + LCtrl + 1 = VDesktop to left
~<!<^1::
    Send {LCtrl down}{LWin down}{Left down}{LWin up}{LCtrl up}{Left up}
Return

; LAlt + LCtrl + 2 = VDesktop to right
~<!<^2::
    Send {LCtrl down}{LWin down}{Right down}{LWin up}{LCtrl up}{right up}
Return

/*
MEDIA KEYS
*/

; Pause
; RCtrl + End
>^End::
    Send {Media_Play_Pause}
Return

; Next track
; RCtrl + Right Arrow
>^Right::
    Send {Media_Next}
Return

; Prev track
; RCtrl + Left Arrow
>^Left::
    Send {Media_Prev}
Return

; Prev track
; RCtrl + Down Arrow
>^Down::
    Send {Launch_Media}
Return
