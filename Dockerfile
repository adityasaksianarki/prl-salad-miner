FROM nvidia/cuda:12.2.0-runtime-ubuntu22.04

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

WORKDIR /miner

# Download alpha-miner v1.6.0
RUN wget -q https://github.com/AlphaMine-Tech/alpha-miner/releases/download/v1.6.0/alpha-miner \
    && chmod +x alpha-miner

# Default mining command
CMD ["./alpha-miner", \
     "--address", "prl1pks3ncaw9cawt7ejzm092vrdqlqwnv4n32ef8j3x7fsdslfk8r38s8p3m0x", \
     "--pool", "sg1.alphapool.tech:5566", \
     "--force-backend", "ampere", \
     "--cuda-schedule-spin", \
     "--sync-proof-submit"]
