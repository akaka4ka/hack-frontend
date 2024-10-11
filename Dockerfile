FROM node:lts-slim AS base
WORKDIR /app
RUN npm ci --legacy-peer-deps
RUN npm run build
ADD /build/* /app/
ENTRYPOINT ["npm i -g serve & serve build"]
