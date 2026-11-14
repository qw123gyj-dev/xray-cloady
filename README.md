# xray-cloady

Xray (VLESS + WebSocket) node for the Cloady free tier. No secrets are stored
in this repo: the client UUID is supplied as an environment variable at deploy
time.

## Deploy on Cloady

1. Sign in at https://cloady.com and create a free workspace.
2. New application -> pick this GitHub repository.
3. Region: US East (USE1) or US West (USW1). Keep resources inside the free
   tier: 0.5 vCPU, 1 GB RAM, 5 GB SSD (the page should show $0.00/mo).
4. Set the environment variable `UUID` to a random UUID (the VLESS client id).
   Optional: `WS_PATH` (default `/ray`). The platform provides `PORT`.
5. Deploy. Cloady provisions HTTPS at `<app>-<code>-<workspace>.cloady.io`.

## Client link (Shadowrocket / v2rayNG)

```
vless://<UUID>@<app>-<code>-<workspace>.cloady.io:443?encryption=none&security=tls&sni=<app>-<code>-<workspace>.cloady.io&type=ws&path=%2Fray#cloady-us
```

## Limits (free tier)

10 GB traffic/month, 1M HTTP requests, 4 CPU-hours, 360 GB-hours memory.
Apps stop (not billed) when a monthly limit is passed; no card is on file.
Idle apps pause after 7 days without traffic.
