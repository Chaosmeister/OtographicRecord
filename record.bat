@echo off

SETLOCAL ENABLEEXTENSIONS
set URL=https://www.twitch.tv/otographic
set Count=1

:loop
if exist "%cd%\\out.ts" (
    ren "%cd%\\out.ts" %Count%_out.ts
    set /a Count=%Count%+1
)
streamlink %URL% best
goto loop
