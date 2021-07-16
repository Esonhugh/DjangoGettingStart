# Dockerfile

# FROM directive instructing base image to build upon
FROM python:3.7-buster

RUN mkdir -p /opt/app
RUN mkdir -p /opt/app/pip_cache
RUN mkdir -p /opt/app/martor_demo
COPY requirement.txt /opt/app/
COPY . /opt/app/

WORKDIR /opt/app 
RUN pip install -r requirement.txt --cache-dir /opt/app/pip_cache
RUN chown -R www-data:www-data /opt/app

STOPSIGNAL SIGTERM
CMD ["python3","/opt/app/manage.py","runserver","8080"]
