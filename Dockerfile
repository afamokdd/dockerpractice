FROM ubuntu:latest
WORKDIR app
RUN apt-get update -y
RUN apt-get -y install python3-pip python3
#&& apt-get -y python3-dev
COPY ./requirements.txt /app
COPY . /app

WORKDIR app
COPY ./requirements.txt app
RUN pip freeze > requirements.txt .
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 5000