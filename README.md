Reproduction for issue with nx

Reproduction steps:
1. Install docker desktop and start it.
2. 
```sh
pnpm i && pnpm run docker-build && pnpm run docker
```
The command will create a docker image and start it with the command at the bottom of the dockerfile. This means it executes the following commands:
```sh
pnpm run company-api:build && pnpm run company-api-app:serve
```
