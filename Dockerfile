FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
RUN mkdir /interview
WORKDIR /interview
COPY Gemfile /interview/Gemfile
COPY Gemfile.lock /interview/Gemfile.lock
RUN bundle install
COPY . /interview
RUN chown -R $USER:$USER .
RUN chmod -R 755 /interview/tmp/db/mysql