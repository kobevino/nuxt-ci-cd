# FROM node:18.20.7-alpine AS builder

# RUN corepack enable

# WORKDIR /app

# COPY package.json yarn.lock ./

# RUN yarn install --production --frozen-lockfile

# COPY . .

# RUN yarn build

# EXPOSE 3000

# CMD ["node", ".output/server/index.mjs"]

FROM node:18.20.7-alpine AS builder

RUN corepack enable

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --production --frozen-lockfile

COPY . .

# 빌드 시점에 사용할 환경 변수 정의
ARG NUXT_APP_CDN_URL
# yarn build 시 환경 변수 주입
RUN NUXT_APP_CDN_URL=$NUXT_APP_CDN_URL yarn build

# RUN yarn build

FROM node:18.20.7-alpine

WORKDIR /app

COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/.output ./.output

EXPOSE 3000


CMD ["node", ".output/server/index.mjs"]