# slic3r docker

## Instalación / Construcción

Para construir el docker ejecutar:

```sh
bash build.sh
```

Esto construirá el `Dockerfile`, instalando las dependencias de `slic3r` e instalándolo con nuestro instalador compatible con los buildpack de Heroku (`build/compile`). Finalmente, tenemos un `docker` con `slic3r` instalado en el path `/slic3r` (por ahora).

## Ejecución

> **#!** Una vez construido el docker, este paso podemos ejecutarlo desde cualquier sitio, el docker queda instalado en el sistema

Para ejecutar nuestro `slic3r` *dockerizado* tenemos que sincronizar la carpeta en la que tenemos los archivos. Para poder separar los laminados por pedidos también indicaremos con qué path queremos trabajar en la instalación.

```sh
# bash run.sh $ORIGIN_ABSOLUTE_PATH $SUBPATH_NAME
bash run.sh $(pwd)/files nombre_pedido
```

En el ejemplo anterior, juntaría todos los archivos `.stl` de la carpeta `./files/nombre_pedido`, y generaría `./files/nombre_pedido/result.gcode`.

## Test

Se puede probar la ejecución con el archivo `test.py`


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
