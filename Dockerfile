FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y python3-pip

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .
CMD [ "python3", "./server.py" ]
