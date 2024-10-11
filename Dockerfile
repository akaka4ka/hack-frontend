FROM node:14-alpine AS development
ENV NODE_ENV development
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm ci --legacy-peer-deps
COPY . .
EXPOSE 3000
CMD [ "npm", "run", "start" ]