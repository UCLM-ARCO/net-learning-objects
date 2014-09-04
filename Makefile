#!/usr/bin/make -f
# -*- mode:makefile -*-

TARGET=$(patsubst %.md, %.html, $(wildcard *.md))

all: $(TARGET)

%.html: %.md
	pandoc $< > $@

clean:
	$(RM) $(TARGET) *~
