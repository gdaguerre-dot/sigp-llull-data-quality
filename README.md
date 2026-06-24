# Análisis y Diseño de Controles de Calidad para una Integración Real entre Sistemas de RRHH

## Portfolio Project

**SQL · Data Quality · Data Governance · Data Modeling · Business Analysis**

---

## Descripción

Este proyecto presenta un caso de estudio basado en una integración real entre sistemas de gestión de personal utilizados en el ámbito educativo.

El objetivo consiste en diseñar controles de calidad de datos que permitan validar la información proveniente de sistemas externos antes de ser consumida por plataformas encargadas de gestionar usuarios, perfiles y permisos.

La iniciativa toma como referencia procesos de integración entre **SIGP (Sistema Integrado de Gestión de Personal)** y **LLULL**, identificando riesgos asociados a inconsistencias de datos y proponiendo mecanismos preventivos de validación.

---

## Problema de Negocio

Las integraciones entre sistemas dependen de que la información intercambiada sea consistente y confiable.

Errores en empleados, cargos, puestos o fechas pueden provocar:

* Usuarios sin acceso a aplicaciones corporativas.
* Asignaciones incorrectas de perfiles.
* Incidencias operativas.
* Incremento de tareas manuales.
* Pérdida de trazabilidad.
* Problemas de sincronización entre sistemas.

### Pregunta de Negocio

**¿Cómo garantizar que los datos recibidos desde sistemas externos sean consistentes antes de ser utilizados por otros sistemas?**

---

## Objetivos

### Objetivo General

Diseñar un marco de validación y control de calidad para una integración de datos de RRHH basada en servicios web.

### Objetivos Específicos

* Analizar la estructura de las entidades intercambiadas.
* Diseñar un modelo relacional normalizado (3NF).
* Definir reglas de calidad de datos.
* Implementar validaciones SQL.
* Proponer indicadores de monitoreo.
* Identificar riesgos operativos asociados a la integración.

---

## Contexto

SIGP constituye la fuente oficial de información de personal de la administración educativa.

LLULL consume dicha información mediante servicios web para gestionar usuarios, perfiles y permisos dentro del ecosistema educativo.

La calidad de los datos resulta crítica para garantizar que los usuarios dispongan de los accesos y autorizaciones correspondientes.

---

## Arquitectura Simplificada

SIGP

↓ Web Services

Procesos de Integración

↓ Validaciones

Controles de Calidad

↓ Sincronización

LLULL

↓ Usuarios y Permisos

---

## Entidades Analizadas

### Empleados

Información maestra de empleados:

* Identificador de empleado
* Documento identificativo
* Nombre y apellidos
* Información de contacto
* Centro de destino
* Puesto asignado

### Puestos de Trabajo

Información relacionada con:

* Puestos ocupados
* Centros educativos
* Fechas de toma de posesión
* Fechas de cese
* Vigencia de asignaciones

---

## Reglas de Calidad Implementadas

### Unicidad

Un empleado debe poseer un identificador único.

### Integridad Referencial

Todo cargo debe existir en el catálogo oficial.

Todo puesto debe existir en el catálogo oficial.

### Consistencia Temporal

La fecha de cese debe ser posterior a la fecha de toma de posesión.

### Completitud

Todo empleado activo debe poseer un puesto vigente.

### Validez

Los códigos utilizados deben existir en los catálogos maestros.

---

## KPIs Propuestos

| KPI                          | Objetivo                          |
| ---------------------------- | --------------------------------- |
| % Empleados sincronizados    | Medir efectividad de integración  |
| Empleados sin puesto vigente | Detectar incidencias operativas   |
| Integridad referencial       | Validar consistencia de catálogos |
| Incidencias por carga        | Medir calidad global              |
| Tiempo de resolución         | Seguimiento de incidencias        |

---

## Tecnologías y Competencias

### Herramientas

* SQL
* Git
* GitHub
* Modelado de Datos
* Documentación Técnica

### Competencias

* Data Quality
* Data Governance
* Data Modeling
* Business Analysis
* Integración de Sistemas
* Análisis Funcional

---

## Estructura del Repositorio

```text
docs/
sql/
sample_data/
diagrams/
findings/
governance/
```

### docs

Documentación funcional y técnica del proyecto.

### sql

Consultas de validación y control de calidad.

### sample_data

Datasets anonimizados utilizados para reproducir ejemplos.

### diagrams

Diagramas de arquitectura, flujo de integración y modelo relacional.

### findings

Hallazgos y análisis de incidencias.

### governance

Controles de gobierno del dato y recomendaciones.

---

## Consideraciones de Confidencialidad

Los datasets originales utilizados durante el análisis contienen información sensible y no son publicados.

Para preservar la privacidad y cumplir principios de gobierno del dato, se utilizan ejemplos anonimizados que permiten reproducir la lógica del proyecto sin exponer información personal ni información institucional.

---

## Principales Aprendizajes

* La calidad de los datos debe incorporarse desde el diseño de la integración.
* Las integraciones requieren mecanismos de validación independientes.
* SQL puede utilizarse como herramienta de auditoría y control.
* La documentación funcional es tan importante como la implementación técnica.
* Los procesos de gobierno del dato reducen riesgos operativos y mejoran la trazabilidad.

---

## Autor

**Gerónimo Daguerre**

Data Analyst Junior | SQL | Data Quality | Data Governance | Business Analysis

---

## Licencia

Proyecto desarrollado con fines educativos y de portfolio profesional.
Los ejemplos incluidos son ilustrativos y no contienen información real ni datos personales identificables.
