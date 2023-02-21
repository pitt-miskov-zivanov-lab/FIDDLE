# I am employing the jupyter minimal notebook 
# for it's ease of use and powerful tools

FROM jupyter/minimal-notebook:cde8b4389ade
# FROM jupyter/scipy-notebook:cf6258237ff9

LABEL author="Adam A Butchy"
LABEL org.opencontainers.image.source=https://github.com/pitt-miskov-zivanov-lab/FIDDLE
LABEL org.opencontainers.image.description="FIDDLE (Finding Interactions using Diagram Driven modeL Extension) is a tool to automatically assemble or extend models with the knowledge extracted from published literature. The two main methods developed as part of FIDDLE are called Breadth First Addition (BFA) and Depth First Addition (DFA), and they are based on network search algorithms."
LABEL org.opencontainers.image.licenses=MIT

RUN python3 -m pip install --no-cache-dir notebook jupyterlab
# RUN pip install --no-cache-dir jupyterhub

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

# RUN adduser --disabled-password \
#     --gecos "Default user" \
#     --uid ${NB_UID} \
#     ${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# USER root

COPY requirements.txt .

RUN python3 -m pip install --upgrade pip

RUN pip install -r requirements.txt

# Switch back to jovyan to avoid accidental container runs as root
# USER $NB_UID