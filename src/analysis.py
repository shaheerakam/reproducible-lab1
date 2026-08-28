"""Toy analysis for Reproducible Computing Lab 1 (Python version).

Loads data/toy_data.csv, computes group summary statistics, and writes a
figure to results/biomarker_by_group.png. Intentionally tiny -- the point of
the lab is the *environment*, not the analysis.
"""
from pathlib import Path

import pandas as pd
import matplotlib

matplotlib.use("Agg")  # headless backend so it runs in a container / on a server
import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "data" / "toy_data.csv"
OUT = ROOT / "results"


def main() -> None:
    df = pd.read_csv(DATA)
    summary = df.groupby("group")["biomarker"].agg(["count", "mean", "std"])
    print("Summary of biomarker by group:")
    print(summary.round(3))

    OUT.mkdir(exist_ok=True)
    ax = df.boxplot(column="biomarker", by="group")
    ax.set_title("Biomarker by group")
    ax.set_ylabel("biomarker")
    plt.suptitle("")
    fig_path = OUT / "biomarker_by_group.png"
    plt.savefig(fig_path, dpi=120, bbox_inches="tight")
    print(f"Wrote figure to {fig_path}")


if __name__ == "__main__":
    main()
