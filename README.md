# OtographicRecord
This is my little setup to record [Otographic Arts from Twitch](https://www.twitch.tv/otographic) on a Windows machine.

Based on [streamlink](https://streamlink.github.io/) and [VLC](www.videolan.org)

I chose the TS fileformat ([MPEG transport stream](https://en.wikipedia.org/wiki/MPEG_transport_stream))  

------

##### Install [streamlink](https://streamlink.github.io/install.html)
##### Install [VLC](https://www.videolan.org/vlc/)

### Download -> Right click and "Save link as"

# Streamlink configuration file
[Where to put it](https://streamlink.github.io/cli.html#configuration-file)
[streamlinkrc](https://raw.githubusercontent.com/Chaosmeister/OtographicRecord/master/streamlinkrc)

# Recording batchscript
with very basic auto-reconnect and failover capabilities

[Record.bat](https://raw.githubusercontent.com/Chaosmeister/OtographicRecord/master/record.bat)

Place it anywhere you like.

### Caution: 1 hour of OA takes up about 1 GB disk space in the ts format.
So about 2½ GB per Episode.
