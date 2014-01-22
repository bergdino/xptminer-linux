obj=jhlib.o main.o protosharesMiner.o sha2.o transaction.o xptClient.o xptClientPacketHandler.o xptPacketbuffer.o xptServer.o xptServerPacketHandler.o win.o\
	metiscoinMiner.o scryptMinerCPU.o primecoinMiner.o scrypt.o keccak.o metis.o  shavite.o 

app=xpt
CC=gcc

all: $(app)

.cpp.o: 
	    $(CXX) $(CFLAGS) -c -o $@ $< -O3
.c.o:
		$(CC) $(CFLAGS) -c -o $@ $< -O3

xpt: $(obj)
	    $(CXX) $(LDFLAGS) -o $@ $(obj) -lpthread -O3 -march=native -mtune=native -lrt

clean:
	    $(RM) *.o $(app)

.PHONY: all clean
