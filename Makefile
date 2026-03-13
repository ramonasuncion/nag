PREFIX ?= $(HOME)/.local
BINDIR  = $(PREFIX)/bin

.PHONY: all install fmt lint clean

all: install

install:
	mkdir -p $(BINDIR)
	install -m 755 nag.py $(BINDIR)/nag

fmt:
	black nag.py

lint:
	ruff check nag.py

clean:
	rm -rf .venv
