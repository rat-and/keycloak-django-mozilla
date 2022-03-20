FROM python:3.9
ENV PYTHONUNBUFFERED 1

# RUN apk add libressl-dev

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

WORKDIR /oidc-demo
COPY . .

#RUN adduser -D user
