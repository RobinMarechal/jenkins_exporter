FROM python:3-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

COPY jenkins_exporter.py /usr/src/app

EXPOSE 9118
ENV JENKINS_SERVER=http://jenkins:8080 VIRTUAL_PORT=9118 VIRTUAL_ADDRESS=0.0.0.0 DEBUG=0

ENTRYPOINT [ "python", "-u", "./jenkins_exporter.py" ]
