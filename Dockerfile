FROM golang:1.15.6-alpine3.12 as builder

# enable Go modules support
ENV GO111MODULE=on

WORKDIR /hello

# manage dependencies
COPY go.mod .
COPY go.sum .

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build


CMD ["go", "run", "main.go"]