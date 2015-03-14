SOURCES=src/*.m
PRODUCT_NAME=hello
BUILD_DIR=build
RELEASE_BUILD_DIR=$(BUILD_DIR)/release
DEBUG_BUILD_DIR=$(BUILD_DIR)/debug

.PHONY: directories

all: directories compile

compile: directories
	objfw-compile -o $(RELEASE_BUILD_DIR)/$(PRODUCT_NAME) $(SOURCES)
	objfw-compile -g -o $(DEBUG_BUILD_DIR)/$(PRODUCT_NAME) $(SOURCES)

directories:
	mkdir -p $(RELEASE_BUILD_DIR)
	mkdir -p $(DEBUG_BUILD_DIR)


