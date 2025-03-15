CC = clang
CFLAGS = -Wall -Wextra -pedantic -Werror=implicit-function-declaration
TARGET = hello_world
CLANG_TIDY = clang-tidy
CLANG_FORMAT = clang-format
SDK_PATH = $(shell xcrun --show-sdk-path)
SYSTEM_INCLUDES = -isystem $(SDK_PATH)/usr/include \
                 -isysroot $(SDK_PATH)

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) $(SYSTEM_INCLUDES) -o $(TARGET) $(TARGET).c

clean:
	rm -f $(TARGET)
	rm -f *.o

analyze:
	$(CLANG_TIDY) $(TARGET).c -- $(SYSTEM_INCLUDES) $(CFLAGS)

format:
	$(CLANG_FORMAT) -i $(TARGET).c

.PHONY: all clean analyze format 
