class Runner
{
    terminal()
    {
        Run, %LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe
        return
    }

    undefined()
    {
        MsgBox % "This hotkey has not been setup yet."
        return
    }
}
