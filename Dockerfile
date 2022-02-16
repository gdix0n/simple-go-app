FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /simple-go-app

EXPOSE 8081

CMD [ "/simple-go-app" ]