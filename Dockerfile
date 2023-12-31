FROM golang:1.18.3 as builder
WORKDIR /services-realtime-chat-app/
COPY . .
RUN go mod download
# RUN go test
RUN go build -o /docker-gs-ping

EXPOSE 3000

CMD [ "/docker-gs-ping" ]