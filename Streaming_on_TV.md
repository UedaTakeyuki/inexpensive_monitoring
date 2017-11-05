# The movie from IP Camera can play on TV player with Raspberry Pi running KODI.

## Summary
We can use TV player as Security Camera (IP Camera) monitor with Raspberry Pi running KODI.

## Network
1. TV and RPi are connected by HDMI or RCA cable.
2. RPi and IP Camera are connected by Ether or WiFi via router, or without router(with setting RPi as working router).
![Network](mermaid/IPCAM_router_RPi_TV.png)


## Steps
1. login KODI
2. Make .strm file with just one line as rtsp URL, for example:  
```bash:IPCAM.strm
rtsp://admin:admin@192.168.1.3/11
```

3. Add the folder (which has the .strm file) on "Movie" - "Files"
4. Play the .strm file

## Delay
About 2 second delays are observed.  
<img src="pic/ss.2017-11-05 10.59.12.png" width="35%">  
[Watch the video](https://youtu.be/mTEhOk-V3kU)


## Confirmed Environment
- Raspberry Pi 2
- OSMC_TGT_rbp2_20171001.img.gz
- [KNEWMART ONVIF720HD IP Camera](https://www.amazon.co.jp/gp/product/B06X3YVBF5/ref=oh_aui_detailpage_o02_s00?ie=UTF8&psc=1)
- [Hitachi L37-H07](http://av.hitachi.co.jp/tv/woooh07/spec/37v.html)

## Bibliography
- [How to Stream a Security Camera using RTSP & KODI on Raspberry Pi.](https://www.arcdyn.com/articles/how-to-stream-a-security-camera-using-rtsp-kodi-on-raspberry-pi/) I've learn this from this post.

