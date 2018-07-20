FROM registry.theplant-dev.com/sunfmin/app1dep:latest
WORKDIR ${GOPATH}/src/github.com/sunfmin/skaffoldhello/app1
COPY . .
RUN set -x && \
    go get -d -v . && \
    CGO_ENABLED=0 GOOS=linux go build -o /app/app .
