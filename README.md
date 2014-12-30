# dockerized-rails-app

## Requirement

- Docker 1.0.0 or higher
- Boot2docker ( recommend 1.3.1 or higher )
- Fig

## Development

setup

```
$ fig run web bash -l -c 'bundle exec rake db:create db:migrate'
```

run app server

```
$ fig up
```
