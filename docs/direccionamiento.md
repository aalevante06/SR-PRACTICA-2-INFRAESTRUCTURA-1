# Plan de direccionamiento — Topología #1

## Redes

| Segmento | Red | Máscara | Uso |
|---|---|---|---|
| WAN FG1 ↔ ISP | `21.74.1.0/30` | `255.255.255.252` | Enlace punto a punto FG1–ISP |
| WAN FG2 ↔ ISP | `21.74.2.0/30` | `255.255.255.252` | Enlace punto a punto FG2–ISP |
| Usuarios | `10.21.74.0/25` | `255.255.255.128` | VLAN 10 |
| Servidores | `10.21.74.128/28` | `255.255.255.240` | Red del servidor HTTPS |

## Direcciones principales

| Equipo | Interfaz | IP / prefijo | Gateway |
|---|---|---|---|
| ISP-2174 | Fa1/0 | `21.74.1.1/30` | — |
| FG1-USERS | port1 / WAN-ISP | `21.74.1.2/30` | `21.74.1.1` |
| FG1-USERS | VLAN10-USERS | `10.21.74.1/25` | — |
| PC-USER-2174 | ens3 | `10.21.74.10/25` (DHCP) | `10.21.74.1` |
| ISP-2174 | Fa1/1 | `21.74.2.1/30` | — |
| FG2-SV | port1 / WAN-ISP | `21.74.2.2/30` | `21.74.2.1` |
| FG2-SV | port2 / LAN-SV | `10.21.74.129/28` | — |
| WEB-SV-2174 | ens3 | `10.21.74.130/28` | `10.21.74.129` |

## DHCP de VLAN 10

- Interfaz: `VLAN10-USERS`
- Gateway: `10.21.74.1`
- Rango: `10.21.74.10 - 10.21.74.100`
- Prefijo: `/25`
