FROM golang:1.20-alpine

WORKDIR /app

COPY main.go .

RUN go mod init github.com/AZRV17 && go mod tidy

EXPOSE 3000

CMD ["go", "run", "main.go"]
