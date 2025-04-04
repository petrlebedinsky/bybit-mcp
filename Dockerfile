FROM n8nio/n8n:latest

# Set working directory to /opt/bybit-mcp
WORKDIR /opt/bybit-mcp

# Copy the current directory contents into the container at /opt/bybit-mcp
COPY . .

# Install pnpm and build the project
RUN curl -f https://get.pnpm.io/v6.js | node - add --global pnpm && pnpm install && pnpm build