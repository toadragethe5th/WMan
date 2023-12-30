@echo off

if "%1"=="" (
    echo ERROR: No argument
) else (
    type repo.yml | find %1
)
