:: Use a batch file to call a powershell script.
:: Use to put monitor into powersave mode without having to wait for your power settings to do it.
:: Found somewhere on the web. I do not understand it, but it works.
:: Store the file anywhere you choose. Just drop a shortcut to it on your desktop for easy access to it.
:: Some things like a YouTube video can bring it out of powersave and back to active status.
:: If you are listening, minimize the browser window or scroll down where the video is not showing on the screen or switch tabs.

echo Putting monitor to sleep in 3 seconds.

:: Wait 3 seconds before running the command, so you have time to release your mouse. Change to any value you need.
timeout /t 3

:: This command sets the monitor immediately into powersave mode.
powershell (Add-Type '[DllImport(\"user32.dll\")]^public static extern int PostMessage(int hWnd, int hMsg, int wParam, int lParam);' -Name a -Pas)::PostMessage(-1,0x0112,0xF170,2)