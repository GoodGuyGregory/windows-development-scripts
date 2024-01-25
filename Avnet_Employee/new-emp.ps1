Write-Host "Welcome to your new Windows 10 PC"
Write-Host "==================================="
Write-Host "Initializing Configurations..."

Start-Sleep -s 5
$chocoResponse = Read-Host -Prompt 'is Chocolatey installed on this machine? [Y] Yes [N] No'
if ($chocoResponse -eq 'Y') {
    'Perfect, moving on to essential development tools'
    Write-Host "==================================="
} else {
    Write-Host "Beginning Installation of Chocolatey Package Manager....."
    <# installation of Chocolatey Package Manager #>
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    Write-Host "Re-Run this script to ensuring Chocolatey is restarted to proceed further"
    Start-Sleep -s 10
    Exit
}

Write-Host "Initializing essential software"
Write-Host "============================"
    Start-Sleep -s 10
    Write-Host "Installing Git....."
    <# Install Git #>
    Start-Process https://github.com/git-for-windows/git/releases/download/v2.33.0.windows.2/Git-2.33.0.2-64-bit.exe
    <# Wait for a response #>
    $gitResponse = Read-Host -Prompt 'Git Installation Complete? [Y] Yes [N] No'
    if ($gitResponse -eq 'Y') {
        Start-Sleep -s 5
        'Perfect, starting install for Visual Studio Code....'
        Write-Host "==================================="
    } else {
        'Finish installing Git, First. Then we will get everything else you need.'
        Exit
    }   

    Write-Host "Installing Visual Studio Code"
    Start-Sleep -s 5
    Start-Process https://az764295.vo.msecnd.net/stable/7f6ab5485bbc008386c4386d08766667e155244e/VSCodeUserSetup-x64-1.60.2.exe

     Write-Host "============================"
     Start-Sleep -s 5
     Write-Host "Installing Development Software with Chocolatey"
     Start-Sleep -s 10
     <# Create an array of all the packages needed.... #>
     $chocolatyTreats = @(
         "postman",
         "spotify",
         "intellijidea-ultimate",
         "wildfly"
         )
     Foreach ($treat in $chocolatyTreats)
     {
         Start-Sleep -s 5
         Write-Host "Installing $($treat)..."
         Write-Host "============================"
         choco install $($treat)
         Write-Host "============================"
         Start-Sleep -s 5
     }
 
     Start-Sleep -s 5
     Write-Host "Installing programming languages and extensions..."
     Write-Host "============================"
 
     $chocolatySnacks = @(
         "nodejs",
         "python",
     )
 
     Foreach ($snack in $chocolatySnacks)
     {
         Start-Sleep -s 5
         Write-Host "Installing $($snack)..."
         Write-Host "============================"
         choco install $($snack)
         Start-Sleep -s 5
         Write-Host "============================"
     }

     Start-Sleep -s 5
     Write-Host "Finished Installing Software and Programing Languages..."
     Write-Host "========================================================="
     Write-Host "Execute ./dev-npm-modules.sh to install global npm packages..."
     Start-Sleep -s 10
     Start-Process "C:\Program Files\Git\git-bash.exe"
     Write-Host "Happy Coding :)"
}















