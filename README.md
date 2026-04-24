# Trabajo Práctico Integrador 1: Adquisición y Análisis Lingüístico de Medios

## Descripción
Este proyecto corresponde al **TPI 1** para el **Laboratorio de PLN (IFTS 24)**. Consiste en la construcción de un sistema en Python diseñado para adquirir textos de la web, transcribir audios, realizar un análisis lingüístico automatizado utilizando **spaCy**, generar visualizaciones profesionales de los datos y exponer los resultados a través de un dashboard interactivo utilizando **Gradio**.

El proyecto se estructura bajo un enfoque modular, implementando un pipeline de Procesamiento de Lenguaje Natural (NLP) y adhiriendo a metodologías de diseño de visualización efectiva (Data-Ink Ratio). 

## Estructura del Proyecto

El notebook principal (`TPI_1_Adquisicion_y_Analisis_Linguistico.ipynb`) se divide en cinco partes principales:

1. **Adquisición Multimodal del Corpus:** Adquisición de datos desde múltiples vías:
   - Extracción de texto web en vivo (Web Scraping / Scrapling / Trafilatura).
   - Transcripción de audios y videos utilizando *Whisper*.
   - Carga de documentos estáticos en formato JSON locales.
   Todos los datos se unifican en un único `DataFrame` de Pandas para su procesamiento estandarizado y sin duplicados.

2. **Análisis Lingüístico con spaCy:** Implementación de procesamiento de lenguaje natural orientado a objetos. Permite el análisis sintáctico, la lematización y el Reconocimiento de Entidades Nombradas (NER), distinguiendo contextualmente entre personas (`PER`), organizaciones (`ORG`) y locaciones (`LOC`).

3. **Visualización Profesional:** Generación de gráficos basados en los principios de Edward Tufte (minimización del *Data-Ink Ratio* y remoción del *chart junk*). Se descartan representaciones imprecisas como los *WordClouds*, optando por gráficos estadísticos limpios (como *Barplots* y *Lollipops* con `seaborn` y `plotly`) para facilitar la interpretación y la toma de decisiones.

4. **Pipeline Integrado (Orquestación):** Encapsulamiento del flujo de trabajo en la clase `PipelineMediatico`. Esto permite orquestar la descarga, unificación, análisis lingüístico, serialización y exportación persistente de los resultados limpios en archivos `CSV` y `JSON`.

5. **Dashboard Interactivo:** Construcción de una interfaz de usuario mediante **Gradio**. La UI implementa un esquema de pestañas (*Tabs*) para mantener separada la lógica y la visualización, previniendo la sobrecarga cognitiva del usuario al navegar entre los datos crudos, gráficas y hallazgos analíticos.

## Tecnologías y Dependencias
El flujo de trabajo se apoya en el siguiente ecosistema:
- **Lenguaje:** Python
- **Procesamiento de Texto y NLP:** `spaCy` (con el modelo `es_core_news_sm`), `NLTK`.
- **Adquisición de Datos:** `scrapling`, `playwright`, Modelos `Whisper`.
- **Análisis de Datos:** `pandas`.
- **Visualización:** `seaborn`, `matplotlib`, `plotly`.
- **Interfaz y Despliegue:** `gradio`.

## Instalación y Configuración (Windows)

Se incluye el script `setup.ps1` automatizado para inicializar el entorno virtual de forma sencilla en Windows.

1. Abre tu terminal (PowerShell) en la carpeta del proyecto.
2. Ejecuta el script de configuración:
   ```powershell
   .\setup.ps1
   ```
3. El script se encargará automáticamente de:
   - Crear un entorno virtual (`.venv`).
   - Instalar las dependencias de Python declaradas.
   - Instalar los navegadores necesarios de `playwright` para el scraping web.
   - Descargar los recursos estáticos de NLTK y el modelo base de spaCy en español (`es_core_news_sm`).

4. Para activar el entorno manualmente en el futuro:
   ```powershell
   .\.venv\Scripts\Activate.ps1
   ```

## Metodología de Desarrollo
El código y la arquitectura del sistema fueron desarrollados bajo un paradigma de **Pair Programming con Inteligencia Artificial**. A lo largo del notebook, se encuentra el *AI Reflection Log*, un registro reflexivo que documenta el proceso crítico de toma de decisiones entre el programador y la IA. Este registro asegura que las elecciones arquitectónicas (como descartar ciertas funciones gráficas o elegir estructuras para la interfaz) fueron revisadas conscientemente.
