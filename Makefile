TARGET := backup.gz
CHUNKFILES := $(sort $(wildcard c???))

all: $(TARGET)

backup.gz: $(CHUNKFILES)
	gzip -c $^ > $@
