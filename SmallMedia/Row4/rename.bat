@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET old=1000
SET new=500
for /f "tokens=*" %%f in ('dir /b *.jpg') do (
  SET newname=%%f
  SET newname=!newname:%old%=%new%!
  move "%%f" "!newname!"
)