# FROM ubuntu:latest
FROM python:3.9-slim

LABEL author="Adam A Butchy"
LABEL org.opencontainers.image.source=https://github.com/pitt-miskov-zivanov-lab/FIDDLE
LABEL org.opencontainers.image.description="FIDDLE (Finding Interactions using Diagram Driven modeL Extension) is a tool to automatically assemble or extend models with the knowledge extracted from published literature. The two main methods developed as part of FIDDLE are called Breadth First Addition (BFA) and Depth First Addition (DFA), and they are based on network search algorithms."
LABEL org.opencontainers.image.licenses=MIT

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook jupyterlab

COPY requirements.txt .
RUN pip install -r requirements.txt

# create user with a home directory
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}
USER ${USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# COPY requirements.txt .
# RUN pip install -r requirements.txt

EXPOSE 8888

# CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0"]

