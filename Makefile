TARGET  = calculator
OBJS = main.o
CC = gcc
CXX = g++
LD = g++
CFLAGS  = -Wall
LDFLAGS = -lm
LIBS    = 
INCPATH = -I.

$(TARGET) : $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.SUFFIXES: .cpp .cc .cxx .c
.cpp.o:
	$(CXX) -c $(CFLAGS) $(INCPATH) -o $@ $<
.cc.o:
	$(CXX) -c $(CFLAGS) $(INCPATH) -o $@ $<
.cxx.o:
	$(CXX) -c $(CFLAGS) $(INCPATH) -o $@ $<
.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o $@ $<

clean:
	rm -f *.o $(TARGET) test

install:
	cp $(TARGET) /usr/local/bin
