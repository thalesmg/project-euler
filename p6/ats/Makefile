.DEFAULT_TARGET := main
.PHONY: clean

PATSHOMEQ="$(PATSHOME)"
PATSCC=$(PATSHOMEQ)/bin/patscc
PATSOPT=$(PATSHOMEQ)/bin/patsopt
PATSCCFLAGS=-O2 -flto -DATS_MEMALLOC_LIBC
LDFLAGS=-latslib

clean::
main: main.dats
	$(PATSCC) $(PATSCCFLAGS) -o $@ $< $(LDFLAGS) || echo $@ ": ERROR!!"
clean:: $(RMF) main

RMF=rm -f

clean:: ; $(RMF) *_?ats.c
