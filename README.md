# Análisis y Diseño de Controles de Calidad para una Integración Real entre Sistemas de RRHH

`SQL` · `Data Quality` · `Data Governance` · `Data Modeling` · `Business Analysis`

> Caso real de análisis funcional: cómo detectar y prevenir fallos de sincronización entre dos sistemas de RRHH antes de que afecten los accesos de los usuarios.

📄 **Documentación completa (caso de estudio detallado):** [`pdf/Proyecto_SIGP_LLULL_Data_Quality.pdf`](./pdf/Proyecto_SIGP_LLULL_Data_Quality.pdf)

---

## Descripción

Este proyecto presenta un caso de estudio basado en una integración real entre sistemas de gestión de personal utilizados dentro del ámbito educativo:

- **SIGP** (Sistema Integrado de Gestión de Personal) — fuente oficial de información de empleados.
- **LLULL** — plataforma que gestiona usuarios, perfiles y permisos dentro del entorno educativo.

El objetivo fue diseñar controles de calidad de datos que permitan validar la información proveniente de SIGP **antes** de que sea consumida por LLULL, reduciendo así incidencias de acceso y autorización.

> Por motivos de confidencialidad, los datos originales no se publican. Se utilizan estructuras anonimizadas y ejemplos representativos.

## Problema de negocio

Errores en empleados, puestos, cargos o fechas dentro de la integración pueden provocar usuarios sin acceso, asignaciones incorrectas de perfiles, incidencias operativas y pérdida de trazabilidad.

**Pregunta de negocio:** ¿Cómo garantizar que los datos recibidos desde un sistema externo sean consistentes, íntegros y confiables antes de ser utilizados por otro sistema?

## Enfoque

1. Análisis funcional de la integración SIGP–LLULL.
2. Modelado relacional normalizado (3NF).
3. Framework de calidad de datos en 5 dimensiones (unicidad, integridad referencial, consistencia temporal, completitud, validez).
4. Validaciones SQL para detectar inconsistencias.
5. Propuesta de KPIs de monitoreo.

El detalle completo de cada etapa, incluyendo el análisis funcional, el modelo de datos y los casos de riesgo identificados, está desarrollado en el [documento PDF](./pdf/Proyecto_SIGP_LLULL_Data_Quality.pdf).

## Validaciones SQL implementadas

- Identificadores duplicados.
- Puestos inexistentes en catálogo.
- Cargos inexistentes en catálogo.
- Fechas inconsistentes (cese anterior a toma de posesión).
- Empleados sin puesto vigente.

## KPIs destacados

| Indicador | Objetivo |
|---|---|
| % Empleados sincronizados | Medir efectividad de la integración |
| Empleados sin puesto vigente | Detectar incidencias |
| Incidencias por carga | Medir calidad global |

*(Set completo de KPIs disponible en el PDF)*

## Estructura del repositorio

```
README.md
pdf/
    Proyecto_SIGP_LLULL_Data_Quality.pdf
sql/
    01_nif_duplicados.sql
    02_puestos_invalidos.sql
    03_cargos_invalidos.sql
    04_fechas_inconsistentes.sql
    05_empleados_sin_puesto.sql
images/
    arquitectura_sigp_llull.png
    modelo_er_sigp_llull.png
    json_getEmpleats_estructura.png
    json_getLlocTreballEmpleats_estructura.png
    sql_01_nif_duplicados.png
    sql_02_puestos_invalidos.png
    sql_03_cargos_invalidos.png
    sql_04_fechas_inconsistentes.png
    sql_05_empleados_sin_puesto.png
```

## Tecnologías y competencias aplicadas

SQL · Modelado de Datos · Data Quality · Data Governance · Análisis Funcional · Business Analysis · Git/GitHub

## Consideraciones de confidencialidad

Los datos originales utilizados durante el análisis contienen información sensible y no se publican. Se utilizan estructuras anonimizadas, diagramas y ejemplos representativos que preservan el enfoque analítico sin exponer información real.

## Autor

**Gerónimo Daguerre**
Analista de Datos · SQL · Data Quality · Data Governance · Business Analysis

## Licencia

Proyecto desarrollado con fines educativos y de portfolio profesional. Los ejemplos incluidos son ilustrativos y no contienen información real ni datos personales identificables.
