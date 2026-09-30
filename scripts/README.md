# Scripts

## `web-server-https-setup.sh`

Script de apoyo para reproducir la instalación de Apache2 y habilitar HTTPS con un certificado autofirmado en `WEB-SV-2174`.

## `test-vpn-connectivity.sh`

Ejecuta las tres pruebas principales hacia el servidor:

1. ICMP (`ping`)
2. HTTPS (`curl`)
3. Recorrido (`tracepath`)

Uso:

```bash
./test-vpn-connectivity.sh
```

o especificando otra IP:

```bash
./test-vpn-connectivity.sh 10.21.74.130
```
