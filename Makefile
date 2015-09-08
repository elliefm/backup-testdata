TARGET := backup.gz
CHUNKFILES := $(wildcard c???)

all: $(TARGET)

backup.gz: $(CHUNKFILES)
	gzip -c $^ > $@
