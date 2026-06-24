/*
Objetivo:
Detectar cargos inexistentes en catálogo.
Dimensión de calidad:
Validez
*/

SELECT
    e.x_empleado,
    e.c_cuerpo AS cargo
FROM empleados e
LEFT JOIN cargos c
    ON e.c_cuerpo = c.ccargo
WHERE c.ccargo IS NULL;
