# portfolio

Portfolio

## Getting Started

This project is a starting point for a Flutter application.

Actualmente Flutter web puede compilar a web de dos maneras.\

Skia: Dibujando en un canvas, se obtiene un mejor desempanio pero aun tiene problemas en algunos
elemento, por ejemplo algunos assets como imagenes, en modo release se muestran gris.
HTML: Se compila el codigo y se genera js/html/css. La aplicacion web ocupa mas espacio y puede ser
un poco mas lenta, pero no tiene los problemas de Skia

para correr cambiando el motor de renderizado utiliza el siguiente codigo
( Si se utiliza AndroiStudio, se puede agregar en la configuracion del RUN )

(--release / --debug)
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

flutter run -d chrome  --web-renderer html --release

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

para compilar con el renderizado html y modo release

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
flutter build web --web-renderer html --release
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -