CC = gcc
CFLAGS = -Wall -I/usr/include/SDL2
LDFLAGS = -lSDL2_image -lSDL2_ttf -lSDL2 -lpthread

CLIENT_SRC = sh13.c
SERVER_SRC = server.c

CLIENT_EXEC = sh13
SERVER_EXEC = server

PORT = 1234
PORTA = 1235
PORTB = 1236
PORTC = 1237
PORTD = 1238

all: $(CLIENT_EXEC) $(SERVER_EXEC)

$(CLIENT_EXEC): $(CLIENT_SRC)
	$(CC) -o $(CLIENT_EXEC) $(CFLAGS) $(CLIENT_SRC) $(LDFLAGS)

$(SERVER_EXEC): $(SERVER_SRC)
	$(CC) -o $(SERVER_EXEC) $(SERVER_SRC)

run: all
	@echo "Running server and 4 individual client instances in their dedicated terminals..."
	gnome-terminal -- bash -c "./$(SERVER_EXEC) $(PORT); exec bash"
	sleep 1
	gnome-terminal -- bash -c "./$(CLIENT_EXEC) localhost $(PORT) localhost $(PORTA) a; exec bash"
	sleep 1
	gnome-terminal -- bash -c "./$(CLIENT_EXEC) localhost $(PORT) localhost $(PORTB) b; exec bash"
	sleep 1
	gnome-terminal -- bash -c "./$(CLIENT_EXEC) localhost $(PORT) localhost $(PORTC) c; exec bash"
	sleep 1
	gnome-terminal -- bash -c "./$(CLIENT_EXEC) localhost $(PORT) localhost $(PORTD) d; exec bash"

clean:
	rm -f $(CLIENT_EXEC) $(SERVER_EXEC)

.PHONY: all clean run
