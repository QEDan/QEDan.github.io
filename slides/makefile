SLIDETYPE=revealjs  # revealjs, dzslides, slidy
PANDOCOPTS=-sV revealjs-url=./reveal.js -V theme=moon --slide-level=2

SRCS := $(wildcard *.md)
PRESS := ${SRCS:%.md=%.html}

reveal.js:
	wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
	tar -xzvf master.tar.gz
	mv reveal.js-master/ reveal.js

${PRESS}: $(SRCS) reveal.js
	pandoc -t ${SLIDETYPE} $(@:.html=.md) -o $@ $(PANDOCOPTS)

all: ${PRESS}

clean:
	rm -f *.html
