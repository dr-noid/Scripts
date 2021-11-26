
running := true

LoopPressW()
{
    Loop
    {
        Send {w down}
        ; if (A_TimeIdlePhysical < 1000)
        if (!GetKeyState("w", "T")) 
        {
            running = false
            break
        }
        Sleep 100
        if (A_TimeIdlePhysical < 10)
        {
            MsgBox % "Non idle detected"
        }
    }
    Return
}

>!>^F12:: 
    {
        if (running)
        {
            LoopPressW()
        }
        return
    }