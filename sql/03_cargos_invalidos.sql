/*
Objetivo:
Detectar cuerpos inexistentes en el catálogo oficial.

Dimensión de calidad:
Validez
*/

SELECT
    e.x_empleado,
    e.c_cuerpo AS cuerpo
FROM empleados e
LEFT JOIN cargos c
       ON e.c_cuerpo = c.ccargo
WHERE c.ccargo IS NULL;
