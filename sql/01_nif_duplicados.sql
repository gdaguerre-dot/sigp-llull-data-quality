/*
Objetivo:
Detectar empleados con documento identificativo duplicado.
Dimensión de calidad:
Unicidad
*/

SELECT
    c_numide,
    COUNT(*) AS cantidad_registros
FROM empleados
GROUP BY c_numide
HAVING COUNT(*) > 1;
