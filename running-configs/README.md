# Running-configs

Esta carpeta contiene las configuraciones utilizadas para documentar la Topología #1.

## Archivos

- `ISP-2174-running-config.txt`: configuración del router ISP.
- `Switch-2174-running-config.txt`: configuración del IOSvL2.
- `FG1-USERS-running-config-sanitized.conf`: backup del FortiGate del lado de usuarios.
- `FG2-SV-running-config-sanitized.conf`: backup del FortiGate del lado del servidor.

## Nota de seguridad

Los archivos FortiGate publicados fueron sanitizados antes de prepararlos para GitHub. Las líneas que almacenan contraseñas, PSK u otros secretos se sustituyen por:

```text
"<REDACTED_FOR_PUBLIC_REPOSITORY>"
```

Las interfaces, rutas, objetos, políticas y parámetros necesarios para documentar la práctica permanecen visibles.
