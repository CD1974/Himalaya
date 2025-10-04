# Himalaya
Cordillera de los Himalayas: 🏔️ ***Análisis de Expediciones al Himalaya: Tendencias y Riesgos***

![Foto de Portada del Proyecto Himalaya](exportados/portada.jpg)

🎯 Objetivo principal
Analizar el registro histórico de ascensos en las montañas del Himalaya, explorando la relación entre altura, año, nacionalidad, éxito de la expedición y el riesgo asociado a partir de un conjunto de datos de expediciones.

---

**📂 Estructura del proyecto**

---
```
sql
📂 Proyecto_Himalaya/
├── 📊 BBDD/ 
│   ├── 📄 .gitkeep
│   ├── 📄 exped.csv
│   ├── 📄 himalayan_data_dictionary.csv
│   ├── 📄 members.csv
│   └── 📄 peaks.csv                     # Datasets de origen utilizados en el ETL
├── 📈 Dashboard/ 
│   ├── 📄 himalayan_project.pbix        # Archivo fuente del Dashboard de Power BI
│   ├── 📄 himalayan_project.pdf         # PDF exportado del Dashboard
│   └── 📄 power_bi[1-4].png             # Capturas de pantalla del Dashboard
├── 🧩 ERD/ 
│   ├── 📐 ERD_Himalayan_Expeditions.png # Diagrama Entidad-Relación (ERD)
│   └── 📄 himalayan_expeditions.mwb     # Archivo fuente de MySQL Workbench
├── 📓 Notebook/ 
│   ├── 📒 himalayan_project.ipynb       # Jupyter Notebook con el análisis principal
│   └── 📄 himalayan_project_notebook.pdf# PDF exportado del Notebook
├── 🗄️ SQL
│   ├── 📄 expeditions_fatality.sql
│   ├── 📄 expeditions_members.sql
│   ├── 📄 expeditions_por_anio.sql
│   ├── 📄 expeditions_por_pais.sql
│   ├── 📄 expeditions_por_pico_pais.sql
│   ├── 📄 expeditions_por_season.sql
│   ├── 📄 himalayan_expeditions.sql
│   ├── 📄 muertes_por_pico__mdeaths_ALL.sql
│   ├── 📄 top50_nations_por_expediciones.sql
├── 🛠️ Utils/ 
│   └── 📄 db_connection.py              # Script Python para la conexión a la base de datos
├── csv/                              # Archivos CSV intermedios o limpios (si aplica)
├── 📤 exportados/                       # Gráficos y figuras exportadas
└── README.md

```
---

## 📐 Diagrama ERD MySQL

![Diagrama ERD MySQL](ERD/ERD_Himalayan_Expeditions.png)

---

## 📐 Diagrama ERD Power BI

![Diagrama ERD Power BI](Dashboard/ERD_Power_BI.png)

---
## **🛠️ Tecnologías utilizadas**  

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Anaconda](https://img.shields.io/badge/Anaconda-44A833?style=for-the-badge&logo=anaconda&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)
---

## **📚 Recursos**

- 📂 [Dataset original de Kaggle](https://www.kaggle.com/datasets/bismasajjad/global-ai-job-market-and-salary-trends-2025?select=ai_job_dataset1.csv) – Datos sobre empleos en IA y ciencia de datos.  
- 💾 [Script SQL completo](sql/mercado_ia_final.sql) – Incluye la creación de tablas, normalización, inserciones de traducciones utilizadas en el análisis.
- 🗂️ [Consultas SQL](./sql/) – Scripts para replicar las consultas de análisis.  
- 📊 [Visualizaciones y figuras exportadas](./exportados/) – Gráficos y reportes generados en el proyecto.
- 🌐 [Ver Dashboard Power BI](https://app.powerbi.com/links/5we-gcFjag?ctid=58e889c2-cfaf-48cf-8649-705898b60c6c&pbi_source=linkShare&bookmarkGuid=47b39fd4-a442-4155-b7c4-fcf745bfef36)

---

 ## 📊 **Visualizaciones destacadas**

 🏔️ **Expediciones por año**  
![Expediciones por año histórico](./exportados/expeditions_por_anio_vertical.png)

---
 🏔️ **Expediciones Everest**  
![Expediciones Everest](./exportados/mapa_everest_exped.png)

---
 🏔️ **Expediciones Everest**  
![Expediciones exitosas Everest](./exportados/exitos_exitos_Everest_1950-2025.png)
