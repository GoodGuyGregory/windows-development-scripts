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
$initResponse = Read-Host -Prompt 'Have you already installed your essential software? [Y] Yes [N] No'
<#  Determine if the client has installed main configurations #>
if ($initResponse -eq 'Y','yes','YES') 
{ 
    Write-Host "============================"
    Start-Sleep -s 5
    Write-Host "Installing Development Software with Chocolatey"
    Start-Sleep -s 10
    <# Create an array of all the packages needed.... #>
    $chocolatyTreats = @(
        "firefox",
        "discord",
        "postman",
        "spotify",
        "atom",
        "androidstudio",
        "mongodb-compass",
        "sql-server-management-studio",
        "docker-desktop",
        "docker-cli"
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
        "jdk11",
        "nodejs",
        "python",
        "dotnetcoresdk",
        "hub"
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

    <# NPM Global Modules #>
    $npmTreat = @(
        "-g nativescript",
        "-g @angular/cli",
        "-g create-react-app",
        "-g @vue/cli"
    )

    Write-Host "Final Steps. installing NPM modules for web development"
    Foreach ($npmSnack in $npmTreat)
    {
        Start-Sleep -s 5
        Write-Host "Installing $($npmSnack)..."
        Write-Host "============================"
        npm install $($snack)
        Start-Sleep -s 5
        Write-Host "============================"
    }



} else {
    <# ELSE: #>
    <# ===================================================================#>
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
    $vsCodeResponse = Read-Host -Prompt 'Visual Studio Code Installation Complete? [Y] Yes [N] No'
    if ($vsCodeResponse -eq 'Y') {
        'Perfect, starting Go Language'
        Write-Host "==================================="
    } else {    
        'Finish installing Visual Studio Code, First. Then we will get everything else you need.'
        Exit
    }

    Write-Host "Installing GO Language"
    Start-Sleep -s 5
    Start-Process https://golang.org/dl/go1.17.1.windows-amd64.msi
    $goLangResponse = Read-Host -Prompt 'Go Language Installation Complete? [Y] Yes [N] No'
    if ($goLangResponse -eq 'Y') {
        'Starting MongoDB Community Installation'
        Write-Host "==================================="
    } else {
        'Finish installing Go, First. Then we will get everything else you need.'
       Exit
    }

    <# Write-Host "Installing MongoDB Community"
    # Start-Sleep -s 5
    # Start-Process https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-5.0.3-signed.msi
    # $mongoResponse = Read-Host -Prompt 'MongoDB Installation Complete? [Y] Yes [N] No'
    # if ($mongoResponse -eq 'Y') {
    #     'Perfect, all set with the basics. Starting Chocolatey Installation'
    #     Write-Host "==================================="
    # } else {
    #     'Finish installing Go, First. Then we will get everything else you need.'
    #     Exit
     } #>


     Write-Host "============================"
     Start-Sleep -s 5
     Write-Host "Installing Development Software with Chocolatey"
     Start-Sleep -s 10
     <# Create an array of all the packages needed.... #>
     $chocolatyTreats = @(
         "firefox",
         "discord",
         "postman",
         "spotify",
         "atom",
         "androidstudio",
         "mongodb-compass",
         "sql-server-management-studio",
         "docker-desktop",
         "docker-cli"
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
         "jdk11",
         "nodejs",
         "python",
         "dotnetcoresdk",
         "hub"
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















