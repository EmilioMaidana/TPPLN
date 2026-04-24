# Script de configuración inicial para Windows (PowerShell)
# Laboratorio de PLN - IFTS 24

Write-Host "[>] Iniciando configuración del entorno..." -ForegroundColor Cyan

# 1. Crear entorno virtual si no existe
if (-not (Test-Path ".venv")) {
    Write-Host "[+] Creando entorno virtual..." -ForegroundColor Yellow
    python -m venv .venv
} else {
    Write-Host "[OK] El entorno virtual ya existe." -ForegroundColor Green
}

# 2. Activar entorno e instalar dependencias
Write-Host "[v] Instalando dependencias de Python..." -ForegroundColor Yellow
& .\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.txt

# 3. Instalar navegadores de Playwright
Write-Host "[W] Instalando navegadores para Web Scraping..." -ForegroundColor Yellow
playwright install

# 4. Descargar recursos de NLTK
Write-Host "[*] Descargando recursos de NLTK..." -ForegroundColor Yellow
python -c "import nltk; nltk.download('stopwords'); nltk.download('punkt_tab')"

# 5. Descargar el modelo de spaCy usado en la cursada
Write-Host "[*] Descargando modelo de spaCy (es_core_news_sm)..." -ForegroundColor Yellow
python -m spacy download es_core_news_sm

# 6. Instalar Scrapling components
Write-Host "[*] Instalando componentes de Scrapling..." -ForegroundColor Yellow
pip install scrapling

Write-Host "[OK] ¡Configuración completada con éxito!" -ForegroundColor Green
Write-Host "[INFO] Para activar el entorno manualmente usa: .\.venv\Scripts\Activate.ps1" -ForegroundColor Gray
