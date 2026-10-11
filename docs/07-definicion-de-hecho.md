# Definition of Ready, Done y pruebas

## Ready
Problema/usuario claros; criterios verificables; dependencias identificadas; tamaño razonable; estimación inicial; sin decisiones bloqueantes implícitas.

## Done
Criterios cumplidos; código integrado por PR; build y pruebas relevantes correctas; tenant/autorización revisados; errores y logs sin secretos; UI responsive cuando aplique; documentación actualizada; desplegado a demo cuando corresponda; Issue movida a Done y cerrada.

## Pruebas mínimas
Unitarias: cálculos y transiciones. Integración: EF Core, migraciones, Identity, autorización y tenant isolation. Seguridad: Taller A no accede a Taller B. Enlaces: inválido/expirado/revocado, doble respuesta y doble conversión. E2E: login → cliente/vehículo → cita → cotización → respuesta pública → orden → estado. Migraciones desde base vacía y versión previa.
