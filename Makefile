build:
	llc-15 src/hello.ll -o out/hello.s
	clang-15 out/hello.s src/stdlib.s -static -nostdlib -o out/hello

build-docker:
	docker build -t hello-llvm:latest .

run-docker:
	docker run --interactive --tty --mount type=bind,source=./,target=/app --cap-add=SYS_PTRACE --security-opt seccomp=unconfined hello-llvm:latest
