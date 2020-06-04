import { listenOptions } from "./configs.ts";
import app from "./src/app.ts";

await app.listen(listenOptions);
