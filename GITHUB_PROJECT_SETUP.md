# Configuración rápida de GitHub

1. Sube README, docs, issues, backlog.csv, scripts, .github y este archivo a `Cotizaciones-management`.
2. GitHub → Projects → New project → Board. Nombre `Cotizaciones — Producto y Desarrollo`. Añade Issues de los tres repositorios. Crea vistas Board y Table.
3. Campos: Status (Backlog/Ready/In progress/In review/Blocked/Done), Priority (P0–P3), Sprint (0–5), Area, Estimate (h) numérico, Phase, Type.
4. GitHub no importa CSV como Issues por sí solo. Instala GitHub CLI y ejecuta `gh auth login`. En PowerShell desde la raíz: `./scripts/create_issues.ps1 -Owner TU_USUARIO_O_ORG -Repo Cotizaciones-management -DryRun`; revisa salida; luego ejecuta sin `-DryRun` para crear.
5. Añade las Issues al Project, asigna Status/Priority/Sprint/Estimate. El script crea Issues en management, no crea el Project ni campos y no reparte automáticamente Issues a front/back.
6. Flujo: Backlog → Ready → In progress → In review → Done. En Blocked explica el motivo. Cierra solo después de cumplir criterios, probar e integrar.
7. Para ideas nuevas, crea Issue con `needs-refinement`; no la metas automáticamente al sprint. Si cambia una regla, actualiza docs, registra decisión y modifica Issues/CSV afectados.
