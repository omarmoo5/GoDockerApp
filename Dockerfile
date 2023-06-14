# Stage 1: Build the Go application
FROM golang:1.20-alpine AS builder
WORKDIR /app
COPY app/go.mod app/go.sum ./ 
RUN go mod download
COPY app/*.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .
# ----------------------------------------------------------------------
# Stage 2: Copy the binary to a light container to reduce the image size
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/app .
EXPOSE 9090
# Set the binary as the entry point
ENTRYPOINT ["./app"]
