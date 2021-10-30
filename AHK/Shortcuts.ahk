;--------------------------------------------------
;--------------------------------------------------
;;;;;;;;;;;;;;;;;; GENERIC MACROS ;;;;;;;;;;;;;;;;;
;--------------------------------------------------
;--------------------------------------------------

; Launch Windows Terminal
; Left Windows + Escape
<#`::
    Run, %LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe
    return

; Fn + Del = Discord mute mic
; Fn + PgUp = Discord deafen

; TODO change
; Fn + PgDn 
F15::
    MsgBox % "This hotkey has not been setup yet.""
    return

; Fn + PgDn 
F16::
    MsgBox % "This hotkey has not been setup yet.""
    return

; Search latest copied string on google.
; Fn + Ctrl + End
; TODO change this up
^ & F16::
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

; PAUSE
; Right Control + End
>^End::
{
    Send {Media_Play_Pause}
    return
}

; something new
; Left Alt + n
<!n::
{
    Send test
    return
}

; NEXT TRACK
; Right Control + Right Arrow
>^Right::
{
    Send {Media_Next}
    return
}

; PREV TRACK
; Right Control + Left Arrow
>^Left::
{
    Send {Media_Prev}
    return
}

; PREV TRACK
; Right Control + Down Arrow
>^Down::
{
    Send {Launch_Media}
    return
}
