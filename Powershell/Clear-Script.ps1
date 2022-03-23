# .ps1
#
# Author:           Björn Benouarets
# Github:           https://github.com/bbenouarets/script-utils
# Version:          0.1 (alpha)
#
# Description:      This script is used to clear the temporary $FOLDER
#
# Usage:            ./Clear-Script.ps1

function Clear-Folder {
    param (
        [Parameter(Mandatory=$true)]
        [string] $FOLDER
    )
    
    # Check if folder exists
    if (Test-Path $FOLDER) {
        Write-Host -ForegroundColor Green "[+] Folder $FOLDER exists!"
    } else {
        Write-Host -ForegroundColor Red "[-] Folder $FOLDER does not exist!"
        exit 1
    }

    # Check if folder is not empty
    # If empty, exit
    if ((Get-ChildItem -Path $FOLDER).Count -eq 0) {
        Write-Host -ForegroundColor Green "[!] Folder $FOLDER is empty!"
        exit 0
    }

    # Delete all files and subfolders in $FOLDER recursively but not the folder itself
    Write-Host -ForegroundColor Green "[!] Deleting all files and subfolders in $FOLDER..."
    try {
        Remove-Item -Path $FOLDER\* -Recurse -Force
        Write-Host -ForegroundColor Green "[+] All files and subfolders in $FOLDER have been deleted!"
    }
    catch {
        Write-Host -ForegroundColor Red "[-] Error while deleting files and subfolders in $FOLDER!"
    }
}