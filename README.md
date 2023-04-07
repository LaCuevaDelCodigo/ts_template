# TS Template

Template for TypeScript projects

## Requirements

---

- 🐃 [make](https://www.gnu.org/software/make/)
- 🐋 [docker](https://www.docker.com/)
- 🐳 [docker-compose](https://docs.docker.com/compose/)

## How does it work

---

This project is built with docker-compose and make. You can run the commands directly with npm but **it is highly recommended to use `make` with `docker-compose`** because you make sure to run it with the same version. `Make` raises the container with docker-compose, executes the task and removes the container, in this way the local machine is clean once you execute the commands.

## Example commands

---

- with make

```sh
make test
```

- with docker-compose

```sh
docker-compose run --rm ts_template npm run test
```

- with npm

```sh
npm run test
```

## Make commands

---

```sh
make build
```

```sh
make install
make install deps="date-fns"
make install deps="-D typescript"
```

```sh
make linter/check
make linter/fix
```

```sh
make test
make test/coverage
make test/watch
make test/watch/coverage
```
