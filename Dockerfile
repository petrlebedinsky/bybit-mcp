FROM n8nio/n8n:latest

USER root

# Set working directory to /opt/bybit-mcp
WORKDIR /opt/bybit-mcp

# Copy the current directory contents into the container at /opt/bybit-mcp
COPY . .

# Install PNPM the stable way
RUN npm install -g pnpm

# Then install dependencies and build
RUN pnpm install && pnpm build

USER node