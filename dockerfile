FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirement.txt /app/requirement.txt

WORKDIR /app

RUN pip install -r requirement.txt

COPY . /app
EXPOSE 5000/tcp
ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
