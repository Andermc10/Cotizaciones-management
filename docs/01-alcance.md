# Alcance de Fase 1

## Objetivo
Demo web multiempresa, responsive y desplegada en internet para gestionar clientes, vehículos, citas, cotizaciones y órdenes de trabajo. El cliente consulta una cotización mediante enlace seguro y la acepta/rechaza. También puede solicitar una cita pública pendiente de confirmación.

## Incluido
- Login/logout, autorización, usuarios internos y roles Administrador/Asesor.
- Taller/tenant y aislamiento de datos.
- Clientes, vehículos y catálogo simple de servicios/repuestos.
- Agenda interna en lista y calendario semanal.
- Solicitud pública de cita con datos de cliente/contacto/vehículo, motivo y fecha/hora preferida.
- Cotizaciones con líneas y totales calculados en servidor.
- Enlace público seguro, expirable y revocable; aceptación/rechazo total.
- Conversión idempotente de cotización aceptada en orden de trabajo.
- Dashboard: citas próximas, cotizaciones pendientes, órdenes abiertas y valor de cotizaciones aceptadas.
- Pruebas, auditoría mínima, logging seguro, demo pública y datos ficticios.

## Fuera de alcance
Contabilidad, nómina, POS, DIAN, pagos en línea, inventario avanzado, compras, proveedores, integraciones externas no aprobadas, IA diagnóstica/precios, app nativa, microservicios, auto-registro, roles configurables, agenda avanzada de mecánicos/recursos, reserva automática, aceptación parcial, multi-moneda, impuestos/descuentos complejos y reportes de ingresos cobrados.

## Éxito
El recorrido login → cliente/vehículo → cita → cotización → respuesta pública → orden → cambio de estado funciona con datos ficticios y aislamiento entre talleres; además se recibe y confirma una solicitud pública de cita.
