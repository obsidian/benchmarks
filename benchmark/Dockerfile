FROM golang:latest

RUN go get -u github.com/codesenberg/bombardier

# out
ENV OUT_FILE /tmp/results.txt
ENV PORT 80

ADD benchmark.sh /usr/bin/benchmark
RUN chmod +x /usr/bin/benchmark

CMD "/usr/bin/benchmark"
