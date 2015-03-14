SOURCES=src/main.m
PRODUCT_NAME=hello
BUILD_DIR=build

.PHONY: directories

all: compile

compile: directories
	objfw-compile -o $(BUILD_DIR)/$(PRODUCT_NAME) $(SOURCES)

directories:
	mkdir -p $(BUILD_DIR)


