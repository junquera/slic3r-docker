# slic3r docker

## Instalación / Construcción

Para construir el docker ejecutar:

```sh
bash build.sh
```

Esto construirá el `Dockerfile`, instalando las dependencias de `slic3r` e instalándolo con nuestro instalador compatible con los buildpack de Heroku (`build/compile`). Finalmente, tenemos un `docker` con `slic3r` instalado en el path `/slic3r` (por ahora).

## Ejecución

> **#!** Una vez construido el docker, este paso podemos ejecutarlo desde cualquier sitio, el docker queda instalado en el sistema

Para ejecutar nuestro `slic3r` *dockerizado* tenemos que sincronizar la carpeta en la que tenemos los archivos. Para poder separar los laminados por pedidos indicaremos con qué path queremos trabajar en la instalación.

```sh
# bash run.sh $ORIGIN_ABSOLUTE_PATH
bash run.sh $(pwd)/directorio_archivos
```

En el ejemplo anterior, juntaría todos los archivos `.stl` de la carpeta `./directorio_archivos`, y generaría `./directorio_archivos/result.gcode`. Es **muy importante** no trabajar más de una vez en el mismo directorio (de hecho el script `test.py` genera uno nuevo cada vez con los *stls*) para evitar corrupción en los archivos generados.

## Test

Se puede probar la ejecución con el archivo `test.py`:

```
python3 test.py $ARCHIVOS_STL
```


## TODO

La implementación final tiene que tener el siguiente formato, y ser accesible desde una API:

```
slic3r --merge /directorio/*.stl --load configuracion.ini --output file.gcode
```

Los siguientes pasos serían:

- [ ] Añadir archivo `.ini`

- [ ] Crear API

- [ ] Separar API y Docker

- [ ] Heroku + Docker con API
