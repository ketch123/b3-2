FROM golang:latest as builder
COPY ./b3-1/src/main.go /go
RUN go get github.com/gorilla/mux
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build ./main.go

FROM scratch
COPY --from=builder /go/main /b3-2
EXPOSE 8080
CMD ["/b3-2"]
