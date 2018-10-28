**He descontinuado esta vía porque había que construir demasiados paquetes y demasiadas dependencias para hacerlo funcionar en heroku... Si a alguien se le ocurre una idea, estaría encantado en continuar, así que seguiré haciendo el paquete `compile` del docker para que encaje con esto**

# Slic3r Buildpack

You can specify the Git URL of a third-party buildpack when creating a new app:

```
heroku create myapp --buildpack https://github.com/some/buildpack.git
```

You can also do so for an existing app like so:

```
heroku buildpacks:set https://github.com/some/buildpack.git -a myapp
```

Also, add:

```
heroku buildpacks:add https://github.com/dscout/wkhtmltopdf-buildpack.git -a myapp
```

## Buildpack API

[https://devcenter.heroku.com/articles/buildpack-api](https://devcenter.heroku.com/articles/buildpack-api)
