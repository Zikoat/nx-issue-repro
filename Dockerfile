FROM node:20.15.0

ARG BUILD_ID
ENV BUILD_ID=$BUILD_ID
ENV PNPM_HOME="/pnpm"

WORKDIR '/app'

RUN corepack enable

COPY . .

RUN pnpm install --frozen-lockfile --prefer-offline
RUN pnpm run build

COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]