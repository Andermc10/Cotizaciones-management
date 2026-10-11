# GitHub Project: Kanban y gestión

## Repositorios
- `Cotizaciones-management`: documentación, decisiones, épicas e historias.
- `Cotizaciones-project-front`: Angular e Issues técnicas frontend.
- `Cotizaciones-project-back`: ASP.NET Core, persistencia y API.
Un Project central reúne Issues y PRs de los tres.

## Crear
GitHub → Projects → New project → Board. Nombre sugerido: `Cotizaciones — Producto y Desarrollo`. Añade Issues de los tres repos. Crea vistas Board y Table; Roadmap opcional.

## Campos recomendados
`Status` (Backlog, Ready, In progress, In review, Blocked, Done); `Priority` (P0–P3); `Sprint` (0–5); `Area` (Product, Frontend, Backend, Database, Security, QA, DevOps, UX); `Estimate (h)` número; `Phase` Fase 1; `Type` Epic/User Story/Task/Bug/Spike.

## Flujo Kanban
- Backlog: aprobado pero no listo/priorizado.
- Ready: criterios claros, estimado y sin bloqueos.
- In progress: trabajo iniciado.
- In review: PR/pruebas/revisión pendientes.
- Blocked: documentar qué lo bloquea.
- Done: criterios satisfechos, pruebas ejecutadas e integración terminada.

Etiquetas sugeridas: `type:epic`, `type:story`, `type:task`, `type:bug`, `type:spike`; `area:frontend`, `area:backend`, `area:database`, `area:security`, `area:qa`, `area:devops`, `area:ux`; `priority:P0`…`priority:P3`; `needs-refinement`, `blocked`, `scope-change`.

## Trabajo diario
Mover una Issue a Ready al refinarla; al empezar, In progress; rama `feature/short-description`, `fix/...` o `chore/...`; implementar y probar; abrir PR pequeño; mover a In review; tras integrar y cumplir criterios, Done y cerrar. `Closes #123` cierra automáticamente de forma fiable cuando PR e Issue están en el mismo repo. Para Issues de management con PR en otro repo, enlazar y cerrar manualmente si no se resuelve automáticamente.
