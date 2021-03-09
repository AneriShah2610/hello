FROM golang:1.15.6-alpine3.12

# enable Go modules support
#ENV GO111MODULE=on

WORKDIR .

## manage dependencies
#COPY go.mod .
#COPY go.sum .

COPY . .
#RUN go build
#ENV GOPATH .

CMD ["go", "run", "main.go"]