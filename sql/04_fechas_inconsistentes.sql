/*
Objetivo:
Detectar inconsistencias temporales.
Dimensión de calidad:
Consistencia Temporal
*/

SELECT
    x_empleado,
    f_tompos,
    f_cese
FROM lloc_treball_empleats
WHERE f_cese IS NOT NULL
AND f_cese < f_tompos;
