Entrypoints:

* green.mhs.by - Green Haсkerspace @ WHVX+64, Minsk (91.215.176.168)
* malino.mhs.by - Malino Hackerspace @ VFFH+45, Minsk (86.57.217.140)

---

Documented Nodes:

```
Internet Gateway
  URL: green.mhs.by
  Externally visible IP
    91.215.176.168

PPTP      - server:
  URL: svpn.flynet.by
  mac: 90:F6:52:7F:35:66
  login: bed45-p755
  password: ******** :)
  billing: https://stat.flynet.by/
  payment: ЕРИП > г.Минск > Интернет, КабельноеТВ > FlyNet > 4000056

Provider network
  [under construction]

zuhel     - "P-330W EE" (ZyXEL Communications)
  Router (incoming Internet, no DHCP, default gateway, wifi disabled)
    192.168.128.1  00:19:CB:13:57:C7

tupalink  - "TP-Link TL-MR3020 v1" (Tp-link Technologies CO.)
  URL: tupa.mitt.by
  WiFi Access Point (OpenWrt, DHCP, forward to zuhel, 150N)
    192.168.128.2  90:F6:52:7F:35:66

charlie   - Pine64
  URL: charlie.mitt.by
  ??? function unknown
    192.168.128.4

mpd audio server
  URL: mpd.mitt.by
  MPD web (YMPD): http://192.168.128.5/
    192.168.128.5  b8:27:eb:33:61:92

big-brother-eye - illuminati
  URL: bro.mitt.by
  observe and obey
    192.168.128.7

alisa     - Raspberry PI
  URL: alisa.mitt.by
  Smart House Mojordomo, Not-So-Smart Alisa
    192.168.128.8

bob       - ??? shiva plug
  URL: bob.mitt.by
  NSA surveillance agent
    192.168.128.3
```

SpyNET:
```
                    ┌────────────┐
                    | flynet ┌───└────────────┐   ┌────────────────┐
                    |        | svpn.flynet.by |   |    Internet    |
                 ┌───────────|                |───| 91.215.176.168 |
                 |  |        └───┌────────────┘   └────────────────┘
                 │  └────────────┘
====================================================================
                 │
                 │  ┌───────────────┐
┌─────────────┐  └──│               │
│  tupalink   │─────│     zuhel     │
│192.168.128.2│     │ 192.168.128.1 │
│  (square)   │     │               │
└─────┬───────┘     │               │
      │             │     (NFC)     │
    ((.)) WiFi      │               │
                    └───────────────┘
    ((.))

```
