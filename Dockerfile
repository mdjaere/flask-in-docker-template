FROM tiangolo/meinheld-gunicorn-flask:python3.7-alpine3.8
COPY . /app/
COPY gunicorn_conf.py /gunicorn_conf.py
ENV LOG_LEVEL=debug
RUN pip install -r /app/requirements.txt