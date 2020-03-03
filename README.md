# OtographicRecord
This is my little setup to record [Otographic Arts from Twitch](https://www.twitch.tv/otographic) on a Windows machine.

Based on [streamlink](https://streamlink.github.io/) and [VLC](www.videolan.org)

It records in TS fileformat (MPEG transport stream)
https://en.wikipedia.org/wiki/MPEG_transport_stream

------

##### Install [streamlink](https://streamlink.github.io/install.html)
##### Install [VLC](https://www.videolan.org/vlc/)

# Streamlink configuration file
[Where to put it](https://streamlink.github.io/cli.html#configuration-file) 

```ini
player="C:\Program Files\VideoLAN\VLC\vlc.exe" --file-caching=5000 --sout file/ts:out.ts
rtmpdump=C:\Program Files (x86)\Streamlink\rtmpdump\rtmpdump.exe
ffmpeg-ffmpeg=C:\Program Files (x86)\Streamlink\ffmpeg\ffmpeg.exe
```

# Finally the recording batchscript
with very basic auto-reconnect and failover capabilities

[Record.bat](https://raw.githubusercontent.com/Chaosmeister/OtographicRecord/master/record.bat) - Right click and "Save link as" to download

Place it anywhere you like.
2½ hours of OA take up about 2½ GB in ts format.
