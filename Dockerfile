FROM ubuntu

RUN apt-get update -y &&\
    apt-get install -y python-pip python-dev

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "server.py" ]
