@echo off
chcp 65001
setlocal enabledelayedexpansion

echo 正在自動分類圖庫...
for %%F in (*_*.jpg *_*.png *_*.jpeg) do (
    for /f "tokens=1 delims=_" %%A in ("%%F") do (
        if not exist "%%A" mkdir "%%A"
        move "%%F" "%%A\"
    )
)
echo 分類完成！
pause