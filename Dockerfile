FROM node:18-bookworm-slim

RUN apt update && apt upgrade -y && apt install -y \
  vim
