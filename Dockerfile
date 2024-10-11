FROM node:lts-slim AS base
WORKDIR /app
RUN npm ci --legacy-peer-deps
RUN npm run build
COPY ["build", "."]
ENTRYPOINT ["npm i -g serve & serve build"]
