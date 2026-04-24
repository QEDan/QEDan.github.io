# Makefile for local development of QEDan.github.io

.PHONY: help serve install update clean

# Default target: show help
help:
	@echo "Usage:"
	@echo "  make serve      - Launch the local development server (with livereload)"
	@echo "  make install    - Install Ruby dependencies using Bundler"
	@echo "  make update     - Update Ruby dependencies"
	@echo "  make clean      - Remove generated site files"

# Launch the local version of the website.
# 'bundle exec' ensures the environment matches GitHub Pages as defined in the Gemfile.
serve:
	bundle exec jekyll serve --livereload

# Install the necessary gems.
# Requires Bundler: 'gem install bundler' if not already installed.
install:
	bundle install

# Update the gems to the latest versions allowed by the Gemfile.
update:
	bundle update

# Clean the _site directory and Jekyll cache.
clean:
	bundle exec jekyll clean
