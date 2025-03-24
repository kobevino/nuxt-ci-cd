FROM node:18.20.7-alpine AS builder

RUN corepack enable

WORKDIR /app

COPY package.json yarn.lock ./

RUN --mount=type=cache,id=yarn,target=/root/.yarn yarn install --production --frozen-lockfile

COPY . .

RUN yarn build

FROM node:18.20.7-alpine

WORKDIR /app

COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/.output ./.output

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]