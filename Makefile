TIME = /usr/bin/time

default: time

time: build
	for i in `seq 20`; do $(TIME) --format="%e" ./main; done 2>&1 | sort -n

build: main cache-size.s

cache-size.s: cache-size.c
	$(CC) -S $(CFLAGS) $< -o $@

CFLAGS += -O2 -Wall -Wextra
LDFLAGS += -Wall

main: main.o cache-size.o
main.o: main.c
cache-size.o: cache-size.c
