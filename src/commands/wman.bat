@echo off

cd ~

if "%1"=="" (
    echo ERROR: No argument
) else (
    for /F "delims=" %%i in ('type repo.yml ^| findstr "%1"') do (
        set "output=%%i"
    )

    if "%output%" == "" (
        echo ERROR: No package by that name.
    ) else (
        bitsadmin /create /download package
        bitsadmin /addfile package "%output%"
        bitsadmin /info package /verbose
    )
)
