SRCS = $(wildcard *.chpl)

PROGS = $(patsubst %.chpl,%,$(SRCS))

all: $(PROGS)

%: %.chpl
	chpl  -o $@ $<
