FROM nvidia/cuda:12.2.0-runtime-ubuntu22.04

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

WORKDIR /miner

# Download alpha-miner v1.6.0
RUN wget -q https://github.com/AlphaMine-Tech/alpha-miner/releases/download/v1.6.0/alpha-miner \
    && chmod +x alpha-miner

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

# Worker name via env var — set per replica in SaladCloud
ENV WORKER_NAME=default

ENTRYPOINT ["./entrypoint.sh"]
