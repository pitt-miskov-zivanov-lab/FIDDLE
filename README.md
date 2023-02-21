# FIDDLE

### (Finding Interactions using Diagram Driven modeL Extension)

FIDDLE (Finding Interactions using Diagram Driven modeL Extension) is a tool to automatically assemble or extend models with the knowledge extracted from published literature. The two main methods developed as part of FIDDLE are called Breadth First Addition (BFA) and Depth First Addition (DFA), and they are based on network search algorithms.

[![Documentation Status](https://readthedocs.org/projects/melody-fiddle/badge/?version=latest)](https://melody-fiddle.readthedocs.io/en/latest/?badge=latest)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/pitt-miskov-zivanov-lab/FIDDLE/HEAD?labpath=https%3A%2F%2Fgithub.com%2Fpitt-miskov-zivanov-lab%2FFIDDLE%2Fblob%2Fmain%2FTutorial.ipynb)

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

### This interactive jupyter notebook walks you though all of the pertinent code and functions to:

1. Create a new Erdos-Renyi or Barabasi-Alberts Network.
2. Remove edges from these networks in a consistent and systematic way.
3. Extend a network with missing edges using the Breadth First Addition method (BFA).
4. Extend a network with missing edges using the Depth First Addition method (BFA).

## Citation

### Using FIDDLE:

_Unpublished -> to be updated once published. In the mean time, please site our simulator._

### Using the DISH simulator:

_Sayed K, Kuo Y-H, Kulkarni A, Miskov-Zivanov N. Dish simulator: capturing dynamics of cellular signaling with heterogeneous knowledge. Proceedings of the 2017 Winter Simulation Conference; Las Vegas, Nevada. 3242250: IEEE Press; 2017. p. 1-12._

## Funding

| Program             |     Grant Number |
| ------------------- | ---------------: |
| DARPA Big Mechanism | W911NF-17-1-0135 |

## Useful Code

### For automatically remaking Sphinx documentation:

```
cd docs
make clean
make html
```

Build and Run

```
docker build -t fiddle .
docker run -p 8888:8888 -v $(pwd):/home/jovyan fiddle
OR #tODO
docker run -it -p 8888:8888 -u="jovyan" -v $(pwd):/home/jovyan fiddle
OR #todo
docker run -it --rm -p 8888:8888 fiddle jupyter notebook --NotebookApp.default_url=/lab/ --ip=0.0.0.0 --port=8888
```

List Docker images

```
docker images
```

Select correct container and copy the tag

```
docker tag <tag> aabutchy/fiddle:<versionname>
docker push aabutchy/fiddle:<versionname>
```

where <tag> might look like = "7fb16f9f8b1d" (minus the quotes)
and <versionname> might look like = "firstpush" (minus the quotes)

Docker pull from container:

```
docker pull aabutchy/fiddle
docker run -p 8888:8888 -v $(pwd):/home/jovyan aabutchy/fiddle:firstpush
```

example

```
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work jupyter/minimal-notebook
```
