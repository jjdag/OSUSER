# OSUSER

## Sherlock 13

Ce repo contient tous les fichiers nécéssaires pour compiler et executer une implémentation en C avec GUI en SDL du fameux jeu d'enquête et d'investigation, Sherlock 13.

## Compilation

Le code est muni et d'un script Shell, et d'un Makefile (pour une compilation plus seamless et adaptée au C).

### Dépendances

Ci-dessous les bibliothèques à avoir ou à installer sur votre machine (Linux) :

- SDL2
- SDL2_ttf
- SDL2_image
- pthreads
- `gnome-terminal` (pour ouvrir plusieurs fenêtres via `make run`)

Sur Debian/Ubuntu :

```bash
sudo apt update
sudo apt install libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev gnome-terminal
```

### Commandes à executer dans le terminal : Makefile

Compilation :
```bash
make
```

Execution :
```bash
make run
```

--> Ouvre 5 terminaux séparémment avec gnome-terminal dont 1 dédié au serveur, et 4 aux joueurs a, b, c et d pour lancer une partie

### Commandes à executer dans le terminal : Bash

Compilation :
```bash
./cmd.sh
```

Execution : Fenêtre serveur
```bash
./server <server_ip_addr> <port>
```

Puis quatre fenêtres client chacune lancée comme suit : (x -> {1, 2, 3, 4})
```bash
./sh13 <server_ip_addr> <port> <client1_ip_addr> <client1_port> <player1_name>
```
GUI s'ouvre pour chaque instance lancée, avec un bouton "CONNECT" à cliquer pour se connecter à la partie.
