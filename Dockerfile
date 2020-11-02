FROM golang:1.15-alpine as builder

WORKDIR /opt/goversion-poc

COPY . .

# Build it
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build --ldflags="-w -s" -o /opt/hello .

# Build the final container.
FROM golang:1.15-alpine

# Add the binary
COPY --from=builder /opt/hello /go/bin/hello

# Run it
CMD ["go", "version", "-m", "/go/bin/hello"]
