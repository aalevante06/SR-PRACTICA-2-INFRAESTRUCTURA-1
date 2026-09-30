# Validación funcional — Topología #1

## 1. VPN activa

Desde `PC-USER-2174`:

```bash
ping -c 4 10.21.74.130
```

Resultado esperado: respuestas del servidor y `0% packet loss`.

```bash
curl -k -s -o /dev/null -w "HTTPS OK - Codigo HTTP: %{http_code}\n" https://10.21.74.130
```

Resultado esperado:

```text
HTTPS OK - Codigo HTTP: 200
```

## 2. Recorrido

```bash
tracepath -n 10.21.74.130
```

La evidencia debe finalizar con:

```text
10.21.74.130 reached
```

## 3. VPN deshabilitada

Deshabilitar temporalmente la interfaz/túnel `VPN-FG1-FG2` en FG1.

```bash
ping -c 4 10.21.74.130
```

Resultado observado: `Destination Net Unreachable` y `100% packet loss`.

```bash
curl -k --connect-timeout 5 https://10.21.74.130
```

Resultado observado: fallo de conexión al puerto 443.

## 4. Restauración

Habilitar nuevamente `VPN-FG1-FG2` y repetir las pruebas.

Resultado: ICMP y HTTPS vuelven a funcionar.
