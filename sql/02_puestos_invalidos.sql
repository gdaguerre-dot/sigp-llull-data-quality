/*
Objetivo:
Detectar puestos inexistentes en catálogo.
Dimensión de calidad:
Integridad Referencial
*/

SELECT
    e.x_empleado,
    e.x_puestod
FROM empleados e
LEFT JOIN puestos p
    ON e.x_puestod = p.x_puesto
WHERE p.x_puesto IS NULL;
