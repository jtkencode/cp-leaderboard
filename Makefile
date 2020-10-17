.PHONY: lint
lint:
	@pylint bin/scrape-kattis
	@pylint bin/scrape-codeforces
	@pylint bin/scrape-atcoder
