Opt("SendKeyDelay", 50)

Run("Notepad.exe")

WinWaitActive("[CLASS:Notepad]")

Sleep(3000)

Send("Hi, I'm writing the script to automate Create File, Write Text and Save File functionality of Notepad.")

Sleep(3000)

Send("^s")

WinWaitActive("[CLASS:#32770]")

$path = @DesktopDir & "\MyAutoItFile.txt"

Send($path)

Sleep(3000)

Send("{Enter}")

WinWaitActive("[CLASS:Notepad]")

WinClose("[CLASS:Notepad]")