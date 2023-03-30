# portfolio

## Getting Started

This project is a starting point for a Flutter application.

### Secciones desde desktop

<table style="width:100%; margin-left: auto; margin-right: auto;">
    <tr>
        <td>
            <img src="https://github.com/JesusMarlor/portfolio-flutter-web/blob/master/desk1.png?raw=true" width="640" height="480" />
        </td>
    </tr>
    <tr>
        <td>
            <img src="https://github.com/JesusMarlor/portfolio-flutter-web/blob/master/desk2.png?raw=true" width="640" height="480" />
        </td>
    </tr>
    <tr>
        <td>
            <img src="https://github.com/JesusMarlor/portfolio-flutter-web/blob/master/desk4.png?raw=true" width="640" height="480" />
        </td>
    </tr>
    <tr>
        <td>
            <img src="https://github.com/JesusMarlor/portfolio-flutter-web/blob/master/desk5.png?raw=true" width="640" height="480" />
        </td>
    </tr>
</table>

### Secciones desde movil


<table style="width:100%; margin-left: auto; margin-right: auto;">
    <tr>
        <td>
            <img src="https://github.com/JesusMarlor/portfolio-flutter-web/blob/master/mobile1.png?raw=true" width="250" height="450" />
        </td>
        <td>
            <img src="https://github.com/JesusMarlor/portfolio-flutter-web/blob/master/mobile2.png?raw=true" width="250" height="450" />
        </td>
    </tr>
    <tr>
        <td>
            <img src="https://github.com/JesusMarlor/portfolio-flutter-web/blob/master/mobile3.png?raw=true" width="250" height="450" />
        </td>
    </tr>
</table>

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Live DEMO: https://perfil.pegassus.com.mx

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

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
flutter build web --web-renderer canvaskit
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

--------------------------------------------------------------------------------
Asegurate de tener la version 2.10.3 de flutter
para hacer un downgrade, dentro de la carpeta donde se localiza el sdk ingresa el siguiente comando

user@user:~/snap/flutter/common/flutter$ git checkout 2.10.3

posteriormente...

flutter --version

- [Deploy on Firebase](https://medium.com/flutter/must-try-use-firebase-to-host-your-flutter-app-on-the-web-852ee533a469)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

-------------
L.C.C Jesus Marfil
-------------


Iconos:
<a href="https://www.flaticon.com/free-icons/developer" title="developer icons">Developer icons created by Freepik - Flaticon</a>
<a href="https://www.flaticon.com/free-icons/app-development" title="app development icons">App development icons created by Vectorslab - Flaticon</a>
<a href="https://www.flaticon.com/free-icons/development" title="development icons">Development icons created by Design Circle - Flaticon</a>