# Define the compiler based on the CROSS_COMPILE variable
CC = $(if $(CROSS_COMPILE),aarch64-none-linux-gnu-gcc,gcc)

# Define other variables
CFLAGS = -Wall -g
LDFLAGS =

# Define the source and target files
SRCS = writer.c
TARGET = writer

# Link the target executable
$(TARGET): $(SRCS)
	$(CC) $(LDFLAGS) -o $(TARGET) $(SRCS)
	echo "Building with $(CC)"

# Clean up the build artifacts
clean:
	rm -f *.o $(TARGET) 

.PHONY: all clean