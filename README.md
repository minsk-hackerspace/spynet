Documented Nodes:

```
zuhel     - "P-330W EE" (ZyXEL Communications)
  Router (incoming Internet, no DHCP, default gateway, wifi disabled)
    192.168.128.1 00:19:CB:13:57:C7
tupalink  - "TP-Link TL-MR3020 v1" (Tp-link Technologies CO.)
  WiFi Access Point (OpenWrt, DHCP, forward to zuhel, 150N)
    192.168.128.2 90:F6:52:7F:35:66
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
