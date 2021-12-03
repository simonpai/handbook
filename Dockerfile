FROM node:latest@sha256:225b483436a1b657dae7f0f45ebf5ce7db8c15338eb6a2e6b57a03c4fdf52793

ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . /app

RUN chown -R node:node /app
WORKDIR /app
USER node
