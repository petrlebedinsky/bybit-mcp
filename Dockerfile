FROM n8nio/n8n:latest

ARG BYBIT_API_KEY
ARG BYBIT_API_SECRET
ARG BYBIT_USE_TESTNET
ARG DEBUG

ENV BYBIT_API_KEY=$BYBIT_API_KEY
ENV BYBIT_API_SECRET=$BYBIT_API_SECRET
ENV BYBIT_USE_TESTNET=$BYBIT_USE_TESTNET
ENV DEBUG=$DEBUG

USER root

# Set working directory to /opt/bybit-mcp
WORKDIR /opt/bybit-mcp

# Copy the current directory contents into the container at /opt/bybit-mcp
COPY . .

# Then install dependencies and build
RUN pnpm install && pnpm build

USER node