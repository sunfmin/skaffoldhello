FROM registry.theplant-dev.com/sunfmin/app1dep:latest
WORKDIR /go/src/github.com/sunfmin/skaffoldhello
COPY . .
RUN set -x && \
    go get -d -v ./app1 && \
    CGO_ENABLED=0 GOOS=linux go build -o /app/app ./app1
