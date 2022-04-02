FROM ruby:3.0

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y nodejs yarn default-mysql-client

WORKDIR /docker_rails
COPY Gemfile Gemfile.lock /docker_rails/
RUN bundle install && rails webpacker:install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN rails new . --force --database=mysql

CMD [ "rails", "s", "-b", "0.0.0.0" ]