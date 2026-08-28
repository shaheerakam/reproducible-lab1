# Reproducible Computing Lab 1

A minimal toy project demonstrating a reproducible computing environment
(Python via conda, R via renv, and a Docker container). The analysis itself
is deliberately tiny: it summarizes a synthetic biomarker dataset by group and
saves a boxplot. The point of the lab is the *environment*, not the science.

```
reproducible-lab1/
├── README.md
├── environment.yml       # Python / conda environment
├── requirements.txt      # Python / uv|pip alternative
├── renv.lock             # R environment (you generate this -- see R/setup_renv.R)
├── Dockerfile            # Container that rebuilds the Python env
├── AI_USAGE.md           # How AI was used on this assignment
├── src/
│   └── analysis.py       # Python analysis
├── R/
│   ├── analysis.R        # R analysis
│   └── setup_renv.R      # how to create renv.lock
├── data/
│   └── toy_data.csv      # synthetic dataset
└── results/              # generated figures (git-ignored)
```

## Quickstart (Python / conda) -- ~2 minutes

```bash
conda env create -f environment.yml     # creates env "repro-lab1"
conda activate repro-lab1
python src/analysis.py                   # prints summary + writes results/biomarker_by_group.png
```

## Quickstart (Python / uv) -- alternative

```bash
uv venv --python 3.11
source .venv/bin/activate                # Windows: .venv\Scripts\activate
uv pip install -r requirements.txt
python src/analysis.py
```

## Quickstart (R / renv)

```r
# from R started in the project root:
renv::restore()          # installs the exact package versions from renv.lock
source("R/analysis.R")   # prints summary + writes results/biomarker_by_group_R.png
```

## Quickstart (Docker)

```bash
docker build -t repro-lab1 .
docker run --rm repro-lab1
```

## Requirements
- [Miniconda / Miniforge](https://github.com/conda-forge/miniforge) (for the conda path), OR
- [uv](https://docs.astral.sh/uv/) (for the uv path)
- [R](https://cran.r-project.org/) + the `renv` package (for the R path)
- [Docker](https://docs.docker.com/get-docker/) (for the container path)

No other setup or tribal knowledge required.
