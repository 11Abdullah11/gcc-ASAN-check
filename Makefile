CC=gcc

asan: 
	$(CC) -o main -lasan -O -g -fsanitize=address -fno-omit-frame-pointer main.c && \
	ASAN_OPTIONS=symbolize=1 ASAN_SYMBOLIZER_PATH=$(shell which llvm-symbolizer) ./main

