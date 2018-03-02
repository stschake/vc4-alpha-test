#!makefile

CFLAGS += -g $(shell pkg-config --cflags libdrm)
LDFLAGS += $(shell pkg-config --libs libdrm) -lm

test: main.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)
