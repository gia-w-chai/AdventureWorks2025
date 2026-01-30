# AdventureWorks – Försäljningsanalys

Detta repo innehåller en försäljningsanalys av AdventureWorks2025 med SQL + Python.
Analysen besvarar affärsfrågor med 7 visualiseringar i en Jupyter Notebook.

## Struktur
- `notebooks/analysis.ipynb` – huvudrapporten (SQL + visualiseringar + insikter)
- `data/vis1.sql` ... `data/vis7.sql` – SQL-queries för visualiseringarna
- `requirements.txt` – Python-beroenden

## Förutsättningar
- SQL Server med databasen `AdventureWorks2025` återställd (t.ex. via Docker/SSMS)
- Python-miljö (venv) med installerade paket

## Installera dependencies
```bash
pip install -r requirements.txt
