VERSION = $(shell underscore extract --in metadata.json 'version')
UUID = $(shell underscore extract --in metadata.json --outfmt text 'uuid')
FILENAME="$(UUID)-v$(VERSION).zip"

zip:
	zip -rT $(FILENAME) icons po schemas *.js *.json *.css LICENSE README.md

watch_logs:
	journalctl /usr/bin/gnome-shell -f -o cat
