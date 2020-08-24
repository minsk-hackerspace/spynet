Entrypoints:

* green.mhs.by - Green Haсkerspace @ WHVX+64J, Minsk (91.215.176.168)
* malino.mhs.by - Malino Hackerspace @ VFFH+55C, Minsk
  <details>
    <summary>86.57.217.140</summary>

    Mikrotik RouterOS v6.45.7
    
    ```sh
    $ nmap -A -p- 86.57.217.140          
    Starting Nmap 7.80 ( https://nmap.org ) at 2020-08-24 22:36 +03
    Note: Host seems down. If it is really up, but blocking our ping probes, try -Pn
    Nmap done: 1 IP address (0 hosts up) scanned in 3.53 seconds
    ```
    
  </details>

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
  URL: tupa
  WiFi Access Point (OpenWrt, DHCP, forward to zuhel, 150N)
    192.168.128.2  90:F6:52:7F:35:66

charlie   - Pine64
  URL: charlie
  ??? function unknown
    192.168.128.4

mpd audio server
  URL: mpd
  MPD web (YMPD): http://192.168.128.5/
    192.168.128.5  b8:27:eb:33:61:92

big-brother-eye - illuminati
  URL: bro
  observe and obey
    192.168.128.7

alisa     - Raspberry PI
  URL: alisa
  Smart House Mojordomo, Not-So-Smart Alisa
    192.168.128.8

bob       - ??? shiva plug
  URL: bob
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
