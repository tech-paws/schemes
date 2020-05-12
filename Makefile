FLATC = flatc
SOURCES = $(shell find src -type f -name '*.fbs')
MSG_BUILD = Build:

build: rust swift

rust:
	@echo
	@echo $(MSG_BUILD) $@

	$(FLATC) -o target/rust --rust $(SOURCES)

swift:
	@echo
	@echo $(MSG_BUILD) $@

	$(FLATC) -o target/swift --swift $(SOURCES)

clean:
	rm -rf target/rust/*
	rm -rf target/swift/*
