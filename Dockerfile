FROM python:3.12.3-slim

RUN apt-get update -qq \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY Pipfile .
COPY Pipfile.lock .

RUN  python -m pip install pipenv  \
    && python -m pipenv requirements > requirements.txt \
    && python -m pip install -r requirements.txt

COPY . .

