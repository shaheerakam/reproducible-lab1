# Reproducible Computing Lab 1 -- container that recreates the Python env.
FROM continuumio/miniconda3:24.7.1-0

WORKDIR /app

# Create the conda env first (this layer is cached unless environment.yml changes)
COPY environment.yml .
RUN conda env create -f environment.yml && conda clean -afy

# Copy the rest of the project
COPY . .

# Run the analysis inside the env by default
CMD ["conda", "run", "--no-capture-output", "-n", "repro-lab1", "python", "src/analysis.py"]
