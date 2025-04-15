FROM alpine:3.8

RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apk update && apk add python3 --no-cache

RUN pip3 install -r requirement.txt

EXPOSE 5000 

CMD ["python3", "app.py"]
