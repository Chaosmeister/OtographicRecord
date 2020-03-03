# OtographicRecord
My little setup to record Otographic Arts from Twitch on Windows

Based on [streamlink](https://streamlink.github.io/) and [VLC](www.videolan.org)

##### Install [streamlink](https://streamlink.github.io/install.html)
##### Install [VLC](https://www.videolan.org/vlc/)

------
# Streamlink configuration file
my [Streamlink configuration file](https://streamlink.github.io/cli.html#configuration-file) 

```ini
player="C:\Program Files\VideoLAN\VLC\vlc.exe" --file-caching=5000 --sout file/ts:out.ts
rtmpdump=C:\Program Files (x86)\Streamlink\rtmpdump\rtmpdump.exe
ffmpeg-ffmpeg=C:\Program Files (x86)\Streamlink\ffmpeg\ffmpeg.exe
```

# Finally the recording Batchscript
it has basic failover capabilities 

```batch
@echo off

SETLOCAL ENABLEEXTENSIONS
set URL=https://www.twitch.tv/otographic
set Error=error: No playable streams found on this URL: %URL%
set Count=1

:loop
if exist "D:\\OA\\out.ts" (
    ren "D:\\OA\\out.ts" %Count%_out.ts
    set /a Count=%Count%+1
)
streamlink %URL% best
goto loop
```
