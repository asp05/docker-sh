FROM golang:alpine

ARG app=aiw

RUN mkdir app

COPY main.go app

RUN mv app/main.go app/${app}.go

EXPOSE 8080

ENV app=${app}

CMD go run app/${app}.go