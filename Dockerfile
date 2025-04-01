FROM python:3.12-alpine

WORKDIR /usr/src/app

ARG APP_VERSION

COPY app.py .

RUN pip install flask

ENV APP_VERSION=${APP_VERSION}

EXPOSE 5000

CMD [ "python", "app.py" ]