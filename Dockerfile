FROM golang:1.12-alpine as builder
WORKDIR /app
COPY . .
RUN go build -mod=vendor -o bin/hello

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /app/bin/hello /usr/local/bin/
# COPY --from=builder /app/files /opt/files
COPY files /opt/files
CMD ["hello"]
