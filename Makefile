HTML=$(shell git ls-files | grep "html$$")

.PHONY: tidy

tidy: $(HTML) tidy.config
	for file in $(HTML); do tidy -config tidy.config $$file | sponge $$file ; done
