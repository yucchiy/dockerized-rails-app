FROM yucchiy/ruby:2.0.0

RUN \
    apt-get install -yq --force-yes mysql-client-5.5 libmysqlclient-dev libssl-dev nodejs && \
    apt-get clean


# http://ilikestuffblog.com/2014/01/06/how-to-skip-bundle-install-when-deploying-a-rails-app-to-docker/
RUN mkdir -p /app
WORKDIR /app
COPY ./sample_app_rails_4/Gemfile /app/Gemfile
RUN bash -l -c 'bundle install'

COPY ./sample_app_rails_4 /app

EXPOSE 3000
CMD bash -l -c 'bundle exec rails s'

