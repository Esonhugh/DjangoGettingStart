# Dockerfile

# FROM directive instructing base image to build upon
FROM python:3.7-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /opt/app
RUN mkdir -p /opt/app/pip_cache
RUN mkdir -p /opt/app/martor_demo
COPY . /opt/app/

WORKDIR /opt/app 
RUN pip install -r requirement.txt --cache-dir /opt/app/pip_cache

EXPOSE 8080
STOPSIGNAL SIGTERM
CMD ["python3","manage.py","runserver","0.0.0.0:8080"]
