# Reproduction for issue with nx

Reproduction steps:
1. Install docker desktop and start it.
2. `pnpm i && pnpm run build && pnpm run serve`, this passes and logs "server started"
3. `pnpm run docker-build && pnpm run docker-serve`, this should fail.
