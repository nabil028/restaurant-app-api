FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1
ENV PORT 8030

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORkDIR /app
COPY ./app /app

RUN adduser -D user
USER user