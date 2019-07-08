FROM python:3
MAINTAINER moxiaoxi <momomomoxiaoxi@gmail.com>
ADD requirements.txt /tmp/requirements.txt
RUN mkdir /app \
    && pip install -U -r /tmp/requirements.txt
EXPOSE 80
WORKDIR /app
ENTRYPOINT ["gunicorn"]
