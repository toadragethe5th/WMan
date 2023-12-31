@echo off
cd %userprofile%
rem Bear in mind I don't know Batch that well.
if "%1"=="" (
    echo ERROR: No argument
) else (
    for /F "delims=" %%i in ('findstr "%1" repo.pkgl') do (
        set "output=%%i"
    )
    if "%output%" == "" (
        echo ERROR: No package by that name.
    ) else (
        bitsadmin /create /download package
        bitsadmin /addfile package "%output%" %userprofile%\package.tar.gz
        bitsadmin /complete package
        tar -xzvf %userprofile%\package.tar.gz -C %userprofile%\%output%
        echo package "%1" installed. Prompting for source deletion.
        del /p package.tar.gz
        echo Finished.
    )
)
