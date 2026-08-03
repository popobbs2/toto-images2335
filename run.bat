@echo off
setlocal enabledelayedexpansion

for %%F in (*.jpg *.png *.jpeg) do (
    for /f "tokens=1 delims=_" %%A in ("%%F") do (
        if not exist "%%A" mkdir "%%A"
        move "%%F" "%%A\"
    )
)

echo Done!
pause