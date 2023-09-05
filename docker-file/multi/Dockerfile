FROM golang:alpine as builder

WORKDIR /app

COPY main.go .

RUN go build -o /app/main main.go


FROM alpine
WORKDIR /app
COPY --from=builder /app/main /app

CMD /app/main