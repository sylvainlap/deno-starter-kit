run:
	deno run --allow-env --allow-net main.ts

watch:
	deno run --allow-env --allow-net --watch --unstable main.ts

debug:
	deno run --allow-all --inspect-brk=0.0.0.0:9229 main.ts

test:
	deno test

coverage:
	deno test --coverage --unstable

format:
	deno fmt

lint:
	deno lint --unstable

doc:
	deno doc

bundle:
	rm -rf build/
	mkdir build
	deno bundle main.ts build/index
