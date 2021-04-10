FROM python:3.8.2

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /code

WORKDIR /code

COPY ./requirements.txt /code/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY ./pwmgr /code/

RUN python /code/manage.py migrate