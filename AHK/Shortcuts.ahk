; https://www.github.com/dr-noid/shortcuts

#include Runner.ahk

runner := new Runner()

;--------------------------------------------------
;--------------------------------------------------
;;;;;;;;;;;;;;;;;; GENERIC MACROS ;;;;;;;;;;;;;;;;;
;--------------------------------------------------
;--------------------------------------------------

; Fn + Del = Discord mute mic
; Fn + PgUp = Discord deafen

; Launch Windows Terminal
; Left Windows + `(Grave)
<#`::
{
    runner.terminal()
    return
}

; undefined
; Fn + PgDn 
F15::
{
    runner.undefined()
    return
}

; undefined
; Fn + PgDn 
F16::
{
    runner.undefined()
    return
}

; Search latest copied string on google.
; Fn + Ctrl + End
; TODO change this up
^F16::
    ^+c::
    {
        Run, https://www.google.com/search?q=%clipboard%
        return
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
    return
}

; Next track
; Right Control + Right Arrow
>^Right::
{
    Send {Media_Next}
    return
}

; Prev track
; Right Control + Left Arrow
>^Left::
{
    Send {Media_Prev}
    return
}

; Prev track
; Right Control + Down Arrow
>^Down::
{
    Send {Launch_Media}
    return
}

; Something new
; Left Alt + n
<!n::
{
    Send % "test"
    return
}
