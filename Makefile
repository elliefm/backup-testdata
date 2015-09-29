TARGET := backup
CHUNKFILES := $(sort $(wildcard c???))

all: $(TARGET)

$(TARGET): $(CHUNKFILES)
	gzip -c $^ > $@
