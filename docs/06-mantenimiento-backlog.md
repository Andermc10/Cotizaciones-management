# Mantenimiento del backlog

## Fuentes de verdad
Alcance: `docs/01-alcance.md`; reglas: `docs/02-reglas-de-negocio.md`; arquitectura: `docs/03-arquitectura-y-seguridad.md`; trabajo ejecutable: Issues. CSV/Markdown son baseline versionado.

## Añadir idea
1. Crear Issue en `Cotizaciones-management`.
2. Explicar problema, usuario, resultado y criterios de validación.
3. Etiquetar `needs-refinement`.
4. No agregar automáticamente al sprint actual.
5. Decidir Fase 1 o backlog futuro.
6. Si se aprueba, estimar, declarar dependencias y actualizar CSV/Markdown.
7. Si desplaza trabajo, documentar qué sale o se retrasa.

## Cambiar regla
Actualizar alcance/reglas; registrar motivo y fecha; actualizar Issues afectadas y criterios; revisar dependencias/estimaciones; actualizar CSV/Markdown; commit descriptivo (ej. `docs: actualizar regla de confirmación de citas`); revisar si requiere pruebas/migración.

## Registro de decisiones
D-001 Angular + ASP.NET Core/C# + PostgreSQL. D-002 monolito modular inicial. D-003 EF Core + Npgsql + migraciones. D-004 base compartida con tenant isolation. D-005 Identity/cookie segura, revisar si cambia topología. D-006 roles Administrador/Asesor. D-007 cita pública como solicitud pendiente. D-008 COP y totales backend. D-009 enlace seguro con expiración/revocación. D-010 demo pública. D-011 sprint de dos semanas. D-012 solicitud no reserva horario automáticamente.

## Cierre de sprint
Revisar completado/arrastrado, registrar razones, comparar estimación con esfuerzo real y repriorizar con feedback del taller. Mantener ideas futuras fuera de Fase 1 hasta aprobarlas.
