interface ListenOptions {
  hostname?: string;
  port: number;
}

export const listenOptions: ListenOptions = {
  port: Number(Deno.env.get("PORT")),
};
