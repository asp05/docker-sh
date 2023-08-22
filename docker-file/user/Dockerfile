FROM golang:alpine

WORKDIR /app

RUN addgroup -S appgroup 
RUN adduser -S -D -h /app appuser appgroup
RUN chown -R appuser:appgroup /app

USER appuser

COPY main.go /app

EXPOSE 8080

CMD go run main.go