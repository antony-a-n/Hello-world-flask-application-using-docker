FROM alpine:3.17
RUN mkdir -p /var/flask
WORKDIR /var/flask
COPY . .
RUN apk update
RUN apk add python3 py3-pip --no-cache
RUN pip3 install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]
