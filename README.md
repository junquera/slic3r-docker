# Slic3r Buildpack

You can specify the Git URL of a third-party buildpack when creating a new app:

```
heroku create myapp --buildpack https://github.com/some/buildpack.git
```

You can also do so for an existing app like so:

```
heroku buildpacks:set https://github.com/some/buildpack.git -a myapp
```


## Buildpack API

[https://devcenter.heroku.com/articles/buildpack-api](https://devcenter.heroku.com/articles/buildpack-api)
