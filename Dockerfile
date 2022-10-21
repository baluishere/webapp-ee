FROM python:3.8-alpine
RUN apk add --update \
    && pip install --upgrade pip  \
    && pip install flask
WORKDIR /
COPY . .
ENTRYPOINT ["python", "webapp.py"]
