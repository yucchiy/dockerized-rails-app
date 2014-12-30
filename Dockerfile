FROM yucchiy/ruby:2.0.0

RUN \
    apt-get install -yq --force-yes mysql-client-5.5 libmysqlclient-dev libssl-dev && \
        apt-get clean

        ENV APPROOT /app
        RUN mkdir -p /app
        WORKDIR APPROOT

# http://ilikestuffblog.com/2014/01/06/how-to-skip-bundle-install-when-deploying-a-rails-app-to-docker/
COPY ./sample_app_rails_4/Gemfile Gemfile
COPY ./sample_app_rails_4/Gemfile.lock Gemfile.lock
RUN bash -l -c 'bundle install'

COPY ./sample_app_rails_4 $APPROOT

EXPOSE 3000
CMD["bundle exec rails serve"]

