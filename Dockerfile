FROM gliderlabs/alpine:3.3

RUN apk add --update --no-cache \
    python \
    python-dev \
    py-pip \
    build-base \
    ca-certificates

WORKDIR /app

COPY . /app
RUN pip install -r /app/requirements.txt
EXPOSE 8000
CMD exec gunicorn -w 4 -b :8000 app.app:app ${GUNICORN_EXTRA_FLAGS}
