Documented Nodes:

```
zuhel     - "P-330W EE" (ZyXEL Communications)
  Ethernet Switch (incoming Internet, no DHCP, default gateway)
    192.168.128.1 00:19:CB:13:57:C7
tupalink  - "TP-Link TL-MR3020 v1" (Tp-link Technologies CO.)
  WiFi Access Point (OpenWrt, DHCP, forward to zuhel, 150N)
    192.168.128.2 90:F6:52:7F:35:66
```

Undocumented Nodes:
```
bob
alisa
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
