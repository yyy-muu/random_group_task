FROM ruby:3.0

RUN apt-get update
RUN apt-get install -y nodejs \
                       yarn \
                       default-mysql-client

WORKDIR /docker_rails
COPY Gemfile Gemfile.lock /docker_rails/
RUN bundle install