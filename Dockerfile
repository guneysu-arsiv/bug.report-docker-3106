FROM alpine:3.4

RUN apk update && apk add --no-cached python='2.7.12-r0'

ADD /app.py  /app.py
CMD python2 /app.py