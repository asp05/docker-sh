FROM golang:alpine

RUN mkdir app
ENV APP_PORT=8080

EXPOSE ${APP_PORT}
COPY main.go app

CMD go run app/main.go