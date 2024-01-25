SLIDETYPE=revealjs  # revealjs, dzslides, slidy

SRCS := $(wildcard *.md)
PRESS := ${SRCS:%.md=%.html}

reveal.js:
	wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
	tar -xzvf master.tar.gz
	mv reveal.js-master/ reveal.js

${PRESS}: $(SRCS) reveal.js
	pandoc -t ${SLIDETYPE} $< -o $@ -sV revealjs-url=./reveal.js

all: ${PRESS}

clean:
	rm -f *.html
