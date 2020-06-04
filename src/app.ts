import { Application } from "../deps.ts";
import logger from "./libs/logger.ts";

const app = new Application();

app.use((ctx) => {
  ctx.response.body = "Hello World!";
});

app.addEventListener("listen", ({ port }) => {
  logger.info(`listening on port ${port}.`);
});

export default app;
