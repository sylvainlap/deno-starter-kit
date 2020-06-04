run:
	deno run --allow-env --allow-net main.ts

debug:
	deno run --allow-all --inspect-brk=0.0.0.0:9229 main.ts

test:
	deno test

format:
	deno fmt

doc:
	deno doc

bundle:
	rm -rf build/
	mkdir build
	deno bundle main.ts build/index
