# OtographicRecord
This is my little setup to record [Otographic Arts from Twitch](https://www.twitch.tv/otographic) on a Windows machine.

Based on [streamlink](https://streamlink.github.io/) and [VLC](www.videolan.org)

##### Install [streamlink](https://streamlink.github.io/install.html)
##### Install [VLC](https://www.videolan.org/vlc/)

------
# Streamlink configuration file
[Where to put it](https://streamlink.github.io/cli.html#configuration-file) 

```ini
player="C:\Program Files\VideoLAN\VLC\vlc.exe" --file-caching=5000 --sout file/ts:out.ts
rtmpdump=C:\Program Files (x86)\Streamlink\rtmpdump\rtmpdump.exe
ffmpeg-ffmpeg=C:\Program Files (x86)\Streamlink\ffmpeg\ffmpeg.exe
```

# Finally the recording batchscript
with very basic auto-reconnect and failover capabilities 

It expects to be run in the  

```batch
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
```
