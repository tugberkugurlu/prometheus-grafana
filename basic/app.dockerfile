FROM golang:1.14

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

WORKDIR /go/src/app
EXPOSE 80
CMD ["app"]