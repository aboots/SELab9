FROM python:3.8.10
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

ENV DJANGO_SETTINGS_MODULE=SELab9.settings
RUN mkdir /code
WORKDIR /code
RUN apt-get update -yq && apt-get install -yq gdal-bin nano curl
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
