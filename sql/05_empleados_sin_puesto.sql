/*
Objetivo:
Detectar empleados activos sin puesto vigente.
Dimensión de calidad:
Completitud
*/

SELECT
    e.x_empleado,
    e.t_nombre,
    e.t_apellido1
FROM empleados e
LEFT JOIN lloc_treball_empleats l
    ON e.x_empleado = l.x_empleado
WHERE l.x_puesto IS NULL;
