FROM crystallang/crystal:0.24.1

WORKDIR /app
ADD app.cr shard.yml ./
RUN shards build --release --no-debug

CMD ./bin/orion-old
