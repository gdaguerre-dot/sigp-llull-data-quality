# Análisis y Diseño de Controles de Calidad para una Integración Real entre Sistemas de RRHH

**Portfolio Project**

**SQL · Data Quality · Data Governance · Data Modeling · Business Analysis**

---

## Descripción

Este proyecto presenta un caso de estudio basado en una integración real entre sistemas de gestión de personal utilizados dentro del ámbito educativo.

La iniciativa surge a partir del análisis funcional de los procesos de sincronización entre:

* **SIGP (Sistema Integrado de Gestión de Personal)**, fuente oficial de información de empleados.
* **LLULL**, plataforma encargada de gestionar usuarios, perfiles y permisos dentro del entorno educativo.

El objetivo consiste en diseñar controles de calidad de datos que permitan validar la información proveniente de sistemas externos antes de ser consumida por sistemas dependientes.

Por motivos de confidencialidad, los datos originales no son publicados. Se utilizan estructuras anonimizadas y documentación representativa que permiten reproducir el enfoque analítico sin exponer información sensible.

---

## Problema de Negocio

Las integraciones entre sistemas dependen de que la información intercambiada sea consistente y confiable.

Errores en empleados, puestos, cargos o fechas pueden provocar:

* Usuarios sin acceso a aplicaciones corporativas.
* Asignaciones incorrectas de perfiles.
* Incidencias operativas.
* Incremento de tareas manuales.
* Pérdida de trazabilidad.
* Problemas de sincronización entre sistemas.

---

## Pregunta de Negocio

**¿Cómo garantizar que los datos recibidos desde sistemas externos sean consistentes, íntegros y confiables antes de ser utilizados por otros sistemas?**

---

## Arquitectura de Integración

<img width="2720" height="3280" alt="Arquitectura_Integracion_SIGP_LLULL" src="https://github.com/user-attachments/assets/30bc0b29-dd30-4086-b410-9fb9ba3a2a93" />


La integración analizada sigue un esquema de consumo de servicios web donde SIGP actúa como sistema fuente y LLULL como sistema consumidor.

Entre ambos sistemas se incorporan controles de calidad orientados a validar la información antes de su sincronización.

---

## Modelo de Datos

<img width="1536" height="1024" alt="ER_SIGP_LLULL" src="https://github.com/user-attachments/assets/4e9fd6a2-64b5-4e37-9f7e-9bd33ab1af47" />


El modelo se encuentra normalizado hasta Tercera Forma Normal (3NF) para minimizar redundancias y garantizar la integridad referencial.

---

## Framework de Calidad de Datos

### Unicidad

Un empleado debe poseer un identificador único.

### Integridad Referencial

Todo puesto debe existir en su catálogo oficial.

Todo cargo debe existir en su catálogo oficial.

### Consistencia Temporal

La fecha de cese debe ser posterior a la fecha de toma de posesión.

### Completitud

Todo empleado activo debe poseer un puesto vigente.

### Validez

Los códigos utilizados deben existir en los catálogos maestros.

---

## Validaciones SQL Implementadas

El proyecto incluye consultas SQL para detectar:

* Identificadores duplicados.
* Puestos inexistentes.
* Cargos inexistentes.
* Fechas inconsistentes.
* Empleados sin puesto vigente.

### Archivos SQL

```text
sql/
├── 01_nif_duplicados.sql
├── 02_puestos_invalidos.sql
├── 03_cargos_invalidos.sql
├── 04_fechas_inconsistentes.sql
└── 05_empleados_sin_puesto.sql
```

---

## Evidencias Técnicas

### Exploración de estructuras JSON

* Estructura de getEmpleats
* Estructura de getLlocTreballEmpleats


### Consultas SQL

* sql_01_nif_duplicados.png
* sql_02_puestos_invalidos.png
* sql_03_cargos_invalidos.png
* sql_04_fechas_inconsistentes.png
* sql_05_empleados_sin_puesto.png

---

## KPIs Propuestos

| KPI                          | Objetivo                            |
| ---------------------------- | ----------------------------------- |
| % Empleados sincronizados    | Medir efectividad de la integración |
| Empleados sin puesto vigente | Detectar incidencias                |
| Integridad referencial       | Validar consistencia de catálogos   |
| Incidencias por carga        | Medir calidad global                |
| Tiempo de resolución         | Seguimiento operativo               |

---

## Tecnologías Utilizadas

* SQL
* Git
* GitHub
* Modelado de Datos
* Documentación Técnica
* Análisis Funcional

---

## Competencias Aplicadas

* Data Quality
* Data Governance
* Data Modeling
* Business Analysis
* SQL
* Integración de Sistemas
* Gestión de Riesgos
* Análisis Funcional

---

## Estructura del Repositorio

```text
README.md

pdf/
└── Proyecto_SIGP_LLULL_Data_Quality.pdf

sql/
├── 01_nif_duplicados.sql
├── 02_puestos_invalidos.sql
├── 03_cargos_invalidos.sql
├── 04_fechas_inconsistentes.sql
└── 05_empleados_sin_puesto.sql

images/
├── arquitectura_sigp_llull.png
├── modelo_er_sigp_llull.png
├── json_getEmpleats_estructura.png
├── json_getLlocTreballEmpleats_estructura.png
├── sql_01_nif_duplicados.png
├── sql_02_puestos_invalidos.png
├── sql_03_cargos_invalidos.png
├── sql_04_fechas_inconsistentes.png
└── sql_05_empleados_sin_puesto.png
```

---

## Documentación Completa

La documentación detallada del proyecto se encuentra disponible en:

```text
pdf/Proyecto_SIGP_LLULL_Data_Quality.pdf
```

---

## Consideraciones de Confidencialidad

Los datos originales utilizados durante el análisis contienen información sensible y no son publicados.

Para preservar la privacidad y cumplir los principios de gobierno del dato, se utilizan estructuras anonimizadas, diagramas y ejemplos representativos.

---

## Principales Aprendizajes

* La calidad de datos debe incorporarse desde el diseño de la integración.
* Las integraciones requieren mecanismos de validación independientes.
* SQL puede utilizarse como herramienta de auditoría y control.
* La documentación funcional es tan importante como la implementación técnica.
* Los procesos de gobierno del dato reducen riesgos operativos y mejoran la trazabilidad.

---

## Autor

**Gerónimo Daguerre**

Analista de Datos · SQL · Data Quality · Data Governance · Business Analysis

---

## Licencia

Proyecto desarrollado con fines educativos y de portfolio profesional.

Los ejemplos incluidos son ilustrativos y no contienen información real ni datos personales identificables.

