# dockerized-rails-app

## Requirement

- Docker 1.0.0 or higher
- Boot2docker (recommend 1.3.1 or higher)
- Fig

## Development

```
$ fig build
$ fig up
```

migration

```
$ fig run web bash -l -c 'bundle exec rake db:create db:migrate'
```
