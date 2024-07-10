FROM node:20.15.0

ARG BUILD_ID
ENV BUILD_ID=$BUILD_ID
ENV PNPM_HOME="/pnpm"

WORKDIR '/app'

RUN corepack enable

COPY . .

RUN --mount=type=cache,target=${PNPM_HOME} \
  pnpm config set store-dir ${PNPM_HOME} && \
  pnpm install --frozen-lockfile --prefer-offline

RUN pnpm run build

CMD [ "pnpm", "run", "serve" ]