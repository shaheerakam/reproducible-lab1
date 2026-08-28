# Reproducible Computing Lab 1

A minimal toy project demonstrating a reproducible computing environment
(Python via conda, R via renv, and a Docker container). The analysis itself
is deliberately tiny: it summarizes a synthetic biomarker dataset by group and
saves a boxplot. The point of the lab is the *environment*, not the science.

```
reproducible-lab1/
├── README.md
├── environment.yml     
├── requirements.txt     
├── renv.lock            
├── Dockerfile           
├── AI_USAGE.md          
├── src/
│   └── analysis.py      
├── R/
│   ├── analysis.R        
│   └── setup_renv.R      
├── data/
│   └── toy_data.csv    
└── results/             
```

## Quickstart (Python / conda) -- ~2 minutes

```bash
conda env create -f environment.yml    
conda activate repro-lab1
python src/analysis.py                  
```

## Quickstart (Python / uv) -- alternative

```bash
uv venv --python 3.11
source .venv/bin/activate              
uv pip install -r requirements.txt
python src/analysis.py
```

## Quickstart (R / renv)

```r
# from R started in the project root:
renv::restore()         
source("R/analysis.R")  
```

## Quickstart (Docker)

```bash
docker build -t repro-lab1 .
docker run --rm repro-lab1
```

