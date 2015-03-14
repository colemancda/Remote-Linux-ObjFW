SOURCES=src/main.m
PRODUCT_NAME=hello

all:
	objfw-compile -o $(PRODUCT_NAME) $(SOURCES)
