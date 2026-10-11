# Reglas de negocio

## Multiempresa y usuarios
Cada taller es un tenant. Los datos operativos se vinculan a un tenant. El tenant se deriva de identidad/membresía autenticada; no se confía en un ID enviado por el cliente sin validación. No hay auto-registro. El Administrador gestiona usuarios de su taller.

## Clientes y vehículos
Vehículos pertenecen a un cliente del mismo taller. Normalizar placa; unicidad dentro del taller, no global. Al procesar solicitudes públicas, revisar coincidencias para evitar duplicados.

## Citas
Zona horaria `America/Bogota`; duración predeterminada propuesta de 60 minutos, editable. Estados: Solicitada, Programada, Confirmada, En atención, Completada, Cancelada, No asistió. Solicitud pública nace como Solicitada y no reserva horario; fecha/hora es preferencia. El taller confirma, rechaza o coordina otra fecha. No hay motor de disponibilidad ni bloqueo automático en Fase 1. Validar entradas y proteger endpoints públicos contra abuso.

## Cotizaciones
Moneda COP; `decimal` en C# y `numeric` en PostgreSQL; nunca float/double para dinero. Totales calculados en backend. Cada línea guarda instantánea de descripción/precio. Sin descuentos ni impuestos configurables. Aceptación/rechazo completa, sin selección parcial. Enlace con token criptográficamente seguro, expiración propuesta de 30 días y revocación; preferir almacenar hash y no loguear token. Cotización respondida no se modifica silenciosamente: crear nueva cotización relacionada y revocar enlace anterior cuando aplique. Aceptación transaccional e idempotente. Propuesta de redondeo `MidpointRounding.AwayFromZero` a 2 decimales; probar.

## Órdenes
Solo cotizaciones aceptadas se convierten; operación transaccional e idempotente. Estados: Pendiente, En proceso, Pausada, Terminada, Entregada, Cancelada. Backend valida transiciones. Administrador y Asesor gestionan órdenes en Fase 1.

## Dashboard
Citas siguientes 7 días; cotizaciones pendientes vigentes; órdenes abiertas excluyendo Entregadas/Canceladas; valor de cotizaciones aceptadas en periodo (mes actual por defecto). No etiquetar como ingresos o recaudo.

## Auditoría
Registrar respuestas, conversiones y cambios de estado relevantes. Nunca guardar contraseñas, secretos ni tokens completos en logs.
