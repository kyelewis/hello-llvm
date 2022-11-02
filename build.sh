llc-15 src/hello.ll -o out/hello.s
clang-15 out/hello.s src/stdlib.s -O3 -static -nostdlib -o out/hello
