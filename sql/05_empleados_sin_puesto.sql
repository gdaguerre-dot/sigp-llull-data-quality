/*
Objetivo:
Detectar empleados activos sin puesto vigente a la fecha actual.
Dimensión de calidad:
Completitud

Nota:
Se considera "puesto vigente" aquel cuya fecha de toma de posesión
ya se cumplió y cuya fecha de cese aún no ocurrió (o no tiene cese
registrado, representado aquí como '31/12/9999'). Esta lógica reproduce
el control descrito en el caso de riesgo funcional 10.1 del documento
maestro, donde se identificó que la ausencia de este filtro podía dejar
fuera de la sincronización a empleados activos.
*/

SELECT
    e.x_empleado,
    e.t_nombre,
    e.t_apellido1
FROM empleados e
WHERE NOT EXISTS (
    SELECT 1
    FROM lloc_treball_empleats l
    WHERE l.x_empleado = e.x_empleado
        AND SYSDATE BETWEEN l.f_tompos AND NVL(l.f_cese, TO_DATE('31/12/9999', 'DD/MM/YYYY'))
);
