# Server Side Device programming.

## Summary
The **serve side device programming** is my coind word, means keeping device codes on the server, and just in time feed it to the device & get it executed on the device.
Following adovantages are available:
- Anti tamper:  
  A code on the device is allways exposed to the lisk of tamper. So stay on the server is best way of anti tamper.
- Dinamic code composition:  
  Code composition on the server is more flexible than just parameter valiation of calling device code.

Severs always has **grobal IP address**, as against, device doesn't have always. So, network topology must be **pub-sub** type, program fraction published by server and subscribed by device.
In practice, several architecture can be avairable for **pub-sub** feature, for example, **http**, **mqtt**, **zeromq** and so on.

## Practice
### http

## Threat of the security
I can easy imagine you are feeling fear of **mal code injection** by above features, because these feature can be give oppotunity of the device abuse for mal codes.
First of all, device is still allways under the risk of mal code injection even without above features. 

## Confirmed Environment
- Raspberry Pi 2

## Bibliography

