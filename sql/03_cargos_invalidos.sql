/*
Objetivo:
Detectar cuerpos inexistentes en el catálogo oficial.
Dimensión de calidad:
Validez

Nota:
La tabla origen conserva el nombre histórico "cargos", aunque en este
sistema almacena el catálogo de cuerpos del empleado.
*/

SELECT
    e.x_empleado,
    e.c_cuerpo AS cuerpo
FROM empleados e
LEFT JOIN cargos c
       ON e.c_cuerpo = c.ccargo
WHERE c.ccargo IS NULL;
