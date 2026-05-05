# OtographicRecord
This is my little setup to record [Otographic Arts from Twitch](https://www.twitch.tv/otographic) on a Windows machine.

Based on [streamlink](https://streamlink.github.io/) and [VLC](www.videolan.org)

I chose the TS fileformat ([MPEG transport stream](https://en.wikipedia.org/wiki/MPEG_transport_stream))  


## Install:

- Download [record.sh](https://github.com/Chaosmeister/OtographicRecord/blob/master/record.sh)

make sure it's executable:

```
chmod +x record.sh
```

## Use:

- it accepts the streams link as a parameter: 
```
./record.sh twitch.tv/otographic
```
- it then checks if streamlink and vlc are present, if not it installs them (requiring a root password)
- it then checks if the target outputfile exists and counts up until a free filename is found
- then it starts recording the stream