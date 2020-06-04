# deno-starter-kit

## getting started

- Install [Docker](https://www.docker.com/get-started).
- ```sh
  docker-compose up -d --build
  docker attach deno-starter-kit_container
  ```
- Then:
  - make run: executes main.ts
  - make debug: runs the debugger starting in main.ts
  - make test: runs the tests
  - make format: formats all your files
  - make doc: show documentation
  - make bundle: bundles your project into a single file in build/index

## reference

- [docker](https://www.docker.com/)
- [deno](https://github.com/denoland/deno)
- [oak](https://github.com/oakserver/oak)
