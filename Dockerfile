FROM golang:1.17-alpine
#FROM bitnami/golang:1.19.3

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go build -o simple-golang-webserver .

EXPOSE 8080

CMD ["/app/simple-golang-webserver"]











