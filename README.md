# PRL Salad Miner

Alpha-miner Docker image for SaladCloud deployment.

## Setup

1. Add GitHub Secrets:
   - `DOCKER_USERNAME` — your Docker Hub username
   - `DOCKER_PASSWORD` — your Docker Hub access token

2. Push to `main` → GitHub Actions auto-builds and pushes to Docker Hub

3. Deploy on SaladCloud with image: `yourusername/prl-miner:latest`
