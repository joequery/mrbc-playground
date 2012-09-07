MRUBY := /web/github/mruby
TARGET := rubyfile
CC := gcc
MRBC_SYMBOL := mrubybin
MRBC := $(MRUBY)/bin/mrbc
LIB := $(MRUBY)/lib/libmruby.a
CFLAGS := -Wall -g -O3 
INIT := init.c
DRIVER := driver
WITHLIBS := -I$(MRUBY)/src -I$(MRUBY)/include

$(TARGET): $(DRIVER).o $(TARGET).o
	$(CC) $(CFLAGS) -o $(TARGET) $(DRIVER).o $(TARGET).o $(LIB) -lm

$(DRIVER).o : $(DRIVER).c
	$(CC) $(CFLAGS) $(WITHLIBS) -o $(DRIVER).o -c $(DRIVER).c

$(TARGET).o : $(TARGET).c
	$(CC) $(CFLAGS) $(WITHLIBS) -o $(TARGET).o -c $(TARGET).c

$(TARGET).c : $(TARGET).ctmp
	cat $(INIT) $(TARGET).ctmp > $(TARGET).c

$(TARGET).ctmp : $(TARGET).rb
	$(MRBC) -B$(MRBC_SYMBOL) -o$(TARGET).ctmp $(TARGET).rb

.PHONY: clean
clean:
	rm *.o
	rm *.ctmp
