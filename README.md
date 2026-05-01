# 📊 Portafolio de Procesamiento del Lenguaje Natural (PLN)

Bienvenido al repositorio de proyectos de Procesamiento de Lenguaje Natural y Minería de Textos. Este repositorio documenta el desarrollo analítico, metodológico y técnico aplicado a corpus mediáticos y discursivos, empleando técnicas avanzadas de NLP y programación en Python.

A continuación se presentan los proyectos destacados del repositorio:

---

## 🛠️ Proyecto 1: Adquisición y Análisis Lingüístico de Medios (TPI 1)
**Directorio:** `004_tpi_1/`

Este proyecto se centra en la automatización de la recolección de datos y el análisis exploratorio a través de un pipeline integral orientado a objetos.

### 📌 Características Principales
- **Adquisición Multimodal:** Integración de textos provenientes de la web (Trafilatura), transcripciones de audios de YouTube (Whisper) y documentos JSON locales.
- **Análisis Lingüístico:** Uso del modelo `es_core_news_md` de **spaCy** para tokenización, lematización y reconocimiento de entidades nombradas (PER, ORG, LOC).
- **Orquestación de Datos:** Consolidación de datos mediante la clase `PipelineMediatico`, evitando la duplicación de procesamientos y gestionando la exportación limpia a formatos estructurados (CSV/JSON).
- **Visualización Profesional:** Implementación de principios de diseño de Edward Tufte (Data-Ink Ratio), priorizando gráficos eficientes como *Barplots* (o *Lollipop charts*) sobre opciones estéticas menos precisas como los *WordClouds*, apoyado en bibliotecas gráficas y usando funciones como `sns.despine()` para eliminar el "chart junk".
- **Dashboard Interactivo:** Despliegue de los resultados a través de una interfaz interactiva y estructurada por pestañas desarrollada con **Gradio**, optimizando la carga cognitiva y el espacio visual.
- **Metodología de Desarrollo:** Uso reflexivo e integrado de Inteligencia Artificial como asistente de *pair programming* (registrado en un AI Reflection Log), evaluando críticamente sus aportes arquitectónicos y teóricos frente a las salidas reales de los modelos.

---

## 🔍 Proyecto 2: Text Mining y Análisis Comparativo de Discursos (TPI 3 - Recuperatorio)
**Directorio:** `009_tpi3_text_mining_recuperatorio/`

Este proyecto asciende un escalón hacia la lectura distante (*distant reading*) y el análisis ideológico comparativo de grandes volúmenes de texto. Pone a prueba la clásica máxima computacional "garbage in, garbage out".

### 📌 Características Principales
- **Diseño de Corpus Riguroso:** Construcción de un corpus polarizado de 12 textos periodísticos enfocados en Marcos Galperin y Mercado Libre, balanceado entre medios de "Izquierda" y "Derecha" para analizar matemáticamente las diferencias discursivas.
- **Intervención Humana y Ajuste del Pipeline:**
  - *Ajuste Léxico:* Limpieza algorítmica profunda mediante la comparación y personalización de *stopwords* de spaCy (añadiendo ruido periodístico), y la creación de diccionarios de corrección (`CORRECCIONES_LEMAS`) para consolidar neologismos y variantes ("uberización", "emprendedurismo", "galperín" vs "galperin").
  - *Ajuste Estructural:* Creación de reglas con `EntityRuler` y `Matcher` para preservar *n-gramas* políticos fundamentales (ej: "reforma laboral", "libre mercado") que el tokenizador por defecto separaba, perdiendo el valor conceptual.
- **Representaciones Sparse (BoW vs TF-IDF):** Contraste entre el vocabulario frecuente compartido (Bag of Words), que agrupa lo que todos dicen por volumen, y las anclas ideológicas distintivas (TF-IDF). La técnica permitió identificar las verdaderas narrativas: un vocabulario de denuncia social ("explotación", "subsidio", "parasitismo") frente a uno de oportunidad económica ("inversión", "crecimiento", "emprendedor").
- **Dialéctica Patrón-Fragmento:** Validación de los modelos estadísticos mediante el retorno a los fragmentos textuales originales (*close reading*). Esto reveló cómo el contexto, el uso de comillas irónicas y las construcciones sintácticas moldean la semántica polarizada que las representaciones matemáticas solo logran insinuar.

---

## 💻 Tecnologías Utilizadas
- **Lenguaje:** Python
- **Procesamiento de Lenguaje Natural:** spaCy, NLTK
- **Adquisición de Datos y Scraping:** Whisper (OpenAI), Trafilatura
- **Análisis y Manipulación de Datos:** Pandas, Numpy
- **Visualización:** Seaborn, Matplotlib, Plotly
- **Interfaces Web:** Gradio

## 🎓 Enfoque Metodológico
Todo el repositorio se basa en el principio de que los algoritmos estadísticos de lenguaje no "leen" ni "comprenden" los textos, y por tanto, no sustituyen la interpretación ni el criterio humano. Los modelos y pipelines actúan como "lentes de aumento" que revelan y cuantifican patrones lingüísticos, exigiendo en todo momento la supervisión sistemática y la intervención crítica para generar una verdadera investigación digital.
