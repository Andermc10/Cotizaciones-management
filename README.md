# Cotizaciones — Backlog Fase 1

## Decisiones cerradas
- Angular; ASP.NET Core Web API con C#; PostgreSQL.
- Entity Framework Core + Npgsql; migraciones versionadas en Git.
- Monolito modular inicial; reevaluar microservicios solo si el crecimiento lo justifica.
- Multiempresa con base compartida y aislamiento lógico por taller/tenant.
- Roles iniciales Administrador y Asesor.
- ASP.NET Core Identity y cookie segura HttpOnly preferiblemente con frontend/API bajo el mismo origen; si el hosting separa orígenes, revisar cookies/CORS/CSRF.
- Cita pública = solicitud pendiente: el cliente da datos, vehículo, motivo y fecha/hora preferida; el taller confirma o propone otro horario.
- Demo funcional pública en internet. COP, decimal/numeric y totales calculados en backend. Sin auto-registro público.

## Contenido
`docs/` define alcance/reglas/arquitectura/plan; `issues/` contiene una ficha por tarea; `backlog.csv` es el índice; `scripts/create_issues.ps1` crea Issues usando GitHub CLI; `.github/ISSUE_TEMPLATE/` incluye plantillas; `GITHUB_PROJECT_SETUP.md` explica el uso.

GitHub no convierte Markdown/CSV automáticamente en Issues. Sube estos archivos a `Cotizaciones-management`, revisa el CSV y ejecuta el script con GitHub CLI. El script crea Issues en el repo de gestión; no crea el Project ni los campos personalizados.

Las horas son estimaciones de esfuerzo, no fechas garantizadas. Reestimarlas tras los primeros sprints.
