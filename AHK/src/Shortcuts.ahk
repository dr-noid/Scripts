; https://www.github.com/dr-noid/Scripts

#include Runner.ahk
#SingleInstance Force
#KeyHistory 0
#NoEnv

runner := new Runner()

;--------------------------------------------------
;--------------------------------------------------
;;;;;;;;;;;;;;;;;; GENERIC MACROS ;;;;;;;;;;;;;;;;;
;--------------------------------------------------
;--------------------------------------------------

; Fn + Del = F13 = Discord mute mic
; Fn + PgUp = F14 = Discord deafen

; Launch Windows Terminal
; Left Windows + `(Grave)
<#`::
{
    runner.terminal()
    Return
}

; undefined
; Fn + PgDn 
F15::
{
    runner.undefined()
    Return
}

; undefined
; Fn + PgDn 
F16::
{
    runner.undefined()
    Return
}

; Search latest copied string on google.
; Fn + Ctrl + End
; TODO change this up
^F16::
{
    ^+c::
    {
        Run, https://www.google.com/search?q=%clipboard%
        Return
    }
}

; LAlt + LCtrl + 1 = VDesktop to left
~<!<^1::
{
    Send {LCtrl down}{LWin down}{Left down}{LWin up}{LCtrl up}{Left up}
    Return
}

; LAlt + LCtrl + 2 = VDesktop to right
~<!<^2::
{
    Send {LCtrl down}{LWin down}{Right down}{LWin up}{LCtrl up}{right up}
    Return
}

;--------------------------------------------------
;--------------------------------------------------
;;;;;;;;;;;;;;;;;; MEDIA KEYS ;;;;;;;;;;;;;;;;;;;;;
;--------------------------------------------------
;--------------------------------------------------

; Pause
; Right Control + End
>^End::
{
    Send {Media_Play_Pause}
    Return
}

; Next track
; Right Control + Right Arrow
>^Right::
{
    Send {Media_Next}
    Return
}

; Prev track
; Right Control + Left Arrow
>^Left::
{
    Send {Media_Prev}
    Return
}

; Prev track
; Right Control + Down Arrow
>^Down::
{
    Send {Launch_Media}
    Return
}

