# OSUSER

## Sherlock 13

Ce repo contient tous les fichiers nécéssaires pour compiler et executer une implémentation en C avec GUI en SDL du fameux jeux d'enquête et d'investigation, SHerlock 13.


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

### Commandes à executer dans le terminal : Makefile

Compilation :
```bash
make

Execution :
```bash
make run

-> Ouvre 5 terminaux séparémment avec gnome-terminal dont 1 dédié au serveur, et 4 aux joueurs a, b, c et d pour lancer une partie
