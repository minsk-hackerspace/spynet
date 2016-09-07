Documented Nodes:

```
internet  - hackerspace.flynet.by
  Externally visible IP
    91.215.176.168

zuhel     - "P-330W EE" (ZyXEL Communications)
  Router (incoming Internet, no DHCP, default gateway, wifi disabled)
    192.168.128.1 00:19:CB:13:57:C7
tupalink  - "TP-Link TL-MR3020 v1" (Tp-link Technologies CO.)
  WiFi Access Point (OpenWrt, DHCP, forward to zuhel, 150N)
    192.168.128.2 90:F6:52:7F:35:66

charlie, Pine64
  192.168.128.4

mpd audio server
  192.168.128.5 b8:27:eb:33:61:92
  MPD web (YMPD): http://192.168.128.5/
```

Undocumented Nodes:
```
bob 192.168.128.3
alisa 192.168.128.101
??? (smart house)
```



     internet ─────────┐
                       │
    ┌──────────┐       │ ┌─────────┐
    │          │       └─│         │
    │ tupalink │─────────│ zuhel   │
    │          │         │         │
    │ (square) │         │         │
    └─┬────────┘         │         │
      │                  │   (NFC) │
    ((.)) WiFi           │         │
                         └─────────┘
    ((.))
