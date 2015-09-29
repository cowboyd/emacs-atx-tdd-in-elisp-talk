default: test
downloads-latest: downloads
downloads:
	cask install
test:
	cask exec ert-runner tests.el
