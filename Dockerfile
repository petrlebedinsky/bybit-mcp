FROM n8nio/n8n:latest

# Install curl
RUN apt-get update && apt-get install -y curl

# Set working directory to /opt/bybit-mcp
WORKDIR /opt/bybit-mcp

# Copy the current directory contents into the container at /opt/bybit-mcp
COPY . .

USER root

# Install pnpm and build the project
RUN curl -f https://get.pnpm.io/v6.js | node - add --global pnpm && pnpm install && pnpm build


USER node