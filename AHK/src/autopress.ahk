
running := true

LoopPressW()
{
    Loop
    {
        OutputDebug, % A_INDEX
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
            running = false
            break
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

