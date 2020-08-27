FROM python:3.8

SHELL ["/bin/bash", "-c"]

LABEL maintainer="Ismaël Lachheb <ismael.lachheb@protonmail.com>"

RUN apt-get update  && apt-get install -y gcc git sudo default-jre default-jdk

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false
