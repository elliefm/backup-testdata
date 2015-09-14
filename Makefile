TARGET := backup.gz
CHUNKFILES := $(sort $(wildcard c???))

all: $(TARGET)

$(TARGET): $(CHUNKFILES)
	gzip -c $^ > $@
