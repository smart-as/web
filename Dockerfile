FROM golang
MAINTAINER chenjpu chenjpu@gmail.com

RUN go get github.com/astaxie/beego

RUN go get github.com/smart-as/web

WORKDIR /go/src/github.com/smart-as/web

RUN go build

EXPOSE 8080

CMD ["./asweb"]
