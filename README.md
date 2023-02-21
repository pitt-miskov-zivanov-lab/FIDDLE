# FIDDLE

### (Finding Interactions using Diagram Driven modeL Extension)

FIDDLE (Finding Interactions using Diagram Driven modeL Extension) is a tool to automatically assemble or extend models with the knowledge extracted from published literature. The two main methods developed as part of FIDDLE are called Breadth First Addition (BFA) and Depth First Addition (DFA), and they are based on network search algorithms.

[![Documentation Status](https://readthedocs.org/projects/melody-fiddle/badge/?version=latest)](https://melody-fiddle.readthedocs.io/en/latest/?badge=latest)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/pitt-miskov-zivanov-lab/FIDDLE/HEAD)

## Contents

- [Installation](#Installation)
- [Tutorial](#Tutorial)
- [Citation](#citation)
- [Funding](#funding)

## Installation

1. Clone the FIDDLE repository to your computer.
   ```
   git clone https://github.com/pitt-miskov-zivanov-lab/FIDDLE.git
   ```
2. Navigate into the directory, create a pythonvirtual environment, and install FIDDLE dependencies.
   ```
   cd FIDDLE
   python -m venv env
   pip install -r requirements.txt
   ```
3. Activate the python virtual environment.
   ```
   source env/bin/activate
   ```

## Tutorial

- see [`Tutorial.ipynb`](Tutorial.ipynb)
- also available on [`Binder`](https://mybinder.org/v2/gh/pitt-miskov-zivanov-lab/FIDDLE/HEAD)

### This interactive jupyter notebook walks you though all of the pertinent code and functions to:

1. Create a new Erdos-Renyi or Barabasi-Alberts Network.
2. Remove edges from these networks in a consistent and systematic way.
3. Extend a network with missing edges using the Breadth First Addition method (BFA).
4. Extend a network with missing edges using the Depth First Addition method (BFA).

## Citation

### Using FIDDLE:

Butchy, Adam A., Cheryl A. Telmer, Natasa Miskov-Zivanov. "Automating Knowledge-Driven Model Recommendation: Methodology, Evaluation, and Key Challenges." arXiv preprint arXiv:2301.11397 (2023).

### Using the DISH simulator:

_Sayed K, Kuo Y-H, Kulkarni A, Miskov-Zivanov N. Dish simulator: capturing dynamics of cellular signaling with heterogeneous knowledge. Proceedings of the 2017 Winter Simulation Conference; Las Vegas, Nevada. 3242250: IEEE Press; 2017. p. 1-12._

## Funding

| Program             |     Grant Number |
| ------------------- | ---------------: |
| DARPA Big Mechanism | W911NF-17-1-0135 |
