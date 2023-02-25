FROM python:3.8 AS base


WORKDIR /api_scaffold
COPY . .

RUN pip install --upgrade pip
RUN pip install fastapi
RUN pip install uvicorn
RUN pip install pipenv
RUN pipenv install --system

EXPOSE $API_PORT

CMD uvicorn main:app --host 0.0.0.0 --port $API_PORT