# Streaming from IP Camera to home TV player with KODI running on the Raspberry Pi.

## Summary
This is one of the most easy monitoring system with inexpensive IP Camera, familiar TV player, and Raspberry Pi.  
Almost all of the IP Camera support RTSP protocol for providing there streaming movie. Also the KODI, a Open Source Home Theater Software running on the Raspberry Pi can playback RTSP.
So nessesary steps is just connect TV, Raspberry Pi and IP Camera, then tell RTSP address by making .strm definition file.

KODI can support WiFi router feature as called "Tethering". So you can make this system both through existing router, or without existing router.

## Network
1. TV and RPi are connected by HDMI or RCA cable.
2. RPi and IP Camera are connected by Ether or WiFi via router, or without router(with setting RPi as working router).
![Network](mermaid/IPCAM_router_RPi_TV.png)

## KODI settings.
### CASE: connect RPi and existing router with Ether
- [My OSMC]-[Network]-[Wired]
  - Enable Adapter ■

### CASE: connect RPi and existing router with WiFi
- [My OSMC]-[Network]-[Wireless]
  - Enable Adapter ■
  - Select appropriate router from the list of right hand side, and set pass key. 

### CASE: no existing router, connect RPi and IPCAM directory with Ether
- [My OSMC]-[Network]-[Wired]
  - Enable Adapter ■
- [My OSMC]-[Network]-[Wireless]
  - Enable Adapter ■  (Note: stay without selecting any router)
- [My OSMC]-[Network]-[Tethering]
  - WiFi to Ethernet ■    
  - Enable

### CASE: no existing router, connect RPi and IPCAM directory with WiFi
- [My OSMC]-[Network]-[Wired]
  - Enable Adapter ■
- [My OSMC]-[Network]-[Wireless]
  - Enable Adapter ■  (Note: stay without selecting any router)
- [My OSMC]-[Network]-[Tethering]
  - Ethernet to WiFi ■    
  - Enable

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

## Applicable situations
In case cammeras are inside of the WiFi or LAN cable cover area, for examples:
- Home door monitroring.
- Garden monitroring.
- Small manufacture monitoring.
- Show a delicious-looking kichen works for a signage of restaurants.

## Confirmed Environment
- Raspberry Pi 2
- OSMC_TGT_rbp2_20171001.img.gz
- [KNEWMART ONVIF720HD IP Camera](https://www.amazon.co.jp/gp/product/B06X3YVBF5/ref=oh_aui_detailpage_o02_s00?ie=UTF8&psc=1)
- [Hitachi L37-H07](http://av.hitachi.co.jp/tv/woooh07/spec/37v.html)

## Bibliography
- [How to Stream a Security Camera using RTSP & KODI on Raspberry Pi.](https://www.arcdyn.com/articles/how-to-stream-a-security-camera-using-rtsp-kodi-on-raspberry-pi/)   
I've learn this from this post.

