#!/usr/bin/make -f
# -*- mode:makefile -*-

TARGET=$(patsubst %.md, %.html, $(wildcard *.md))

all: $(TARGET)

%.html: %.md
	pandoc $< > $@
	sed -i s/\.md/\.html/g $@

clean:
	$(RM) $(TARGET) *~
