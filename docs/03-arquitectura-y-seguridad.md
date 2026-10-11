# Arquitectura, datos y seguridad

## Arquitectura
Monolito modular ASP.NET Core; Angular consume API; PostgreSQL. Módulos sugeridos: Identity/Access, Workshops, Customers, Vehicles, Catalog, Appointments, Quotes, WorkOrders, Dashboard, Audit. Evitar microservicios/colas sin necesidad demostrable.

## EF Core y PostgreSQL
Usar EF Core + Npgsql compatible con la versión de .NET. Definir entidades, relaciones, restricciones, índices y convenciones. Migraciones versionadas en Git y revisadas antes de aplicar. No depender de cambios manuales de esquema. Seed demo separado de migraciones. Probar desde base vacía y desde versión previa. Definir precisión decimal y política de fechas; mostrar `America/Bogota`.

## Estructura sugerida
`src/Cotizaciones.Api`, `src/Cotizaciones.Application`, `src/Cotizaciones.Domain`, `src/Cotizaciones.Infrastructure`, `tests/Cotizaciones.UnitTests`, `tests/Cotizaciones.IntegrationTests`; frontend Angular en `Cotizaciones-project-front`. Confirmar en Sprint 0; evitar capas vacías.

## Seguridad
Identity; cookie HttpOnly/Secure en HTTPS, SameSite apropiado y CSRF según topología. Secretos fuera de Git. Autorización en backend, no solo ocultando botones. Validar tenant en operaciones por ID. Enlaces públicos con tokens impredecibles, expiración, revocación, rate limiting y datos mínimos. Aceptar cotización/convertir orden de forma idempotente y transaccional.

## Calidad/despliegue
Pruebas unitarias, integración, E2E y tenant isolation. CI de build/pruebas. HTTPS, health check, logs seguros, configuración por entorno y datos ficticios. Nunca usar datos reales del taller sin autorización.
