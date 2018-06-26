FROM sunfmin/golangskaffoldhello as builder
WORKDIR ${GOPATH}/src/github.com/sunfmin/skaffoldhello
COPY . .
RUN set -x && \
    go get -d -v . && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /app .


FROM alpine
CMD ["./app"]
COPY --from=builder /app .
