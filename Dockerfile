FROM golang:1.12-alpine as builder
WORKDIR /app
COPY . .
RUN go build -mod=vendor -o bin/hello

FROM alpine
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /app/bin/hello /usr/local/bin/
COPY --from=builder /app/entrypoint.sh /opt/entrypoint.sh
ARG HELLO
RUN echo $HELLO
CMD ["/opt/entrypoint.sh"]
