# I am employing the jupyter minimal notebook 
# for it's ease of use and powerful tools
FROM jupyter/minimal-notebook

LABEL author="Adam A Butchy"
LABEL org.opencontainers.image.source=https://github.com/pitt-miskov-zivanov-lab/FIDDLE
LABEL org.opencontainers.image.description="FIDDLE (Finding Interactions using Diagram Driven modeL Extension) is a tool to automatically assemble or extend models with the knowledge extracted from published literature. The two main methods developed as part of FIDDLE are called Breadth First Addition (BFA) and Depth First Addition (DFA), and they are based on network search algorithms."
LABEL org.opencontainers.image.licenses=MIT


# USER root

COPY requirements.txt .

RUN pip install -r requirements.txt

# Switch back to jovyan to avoid accidental container runs as root
# USER $NB_UID