FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
RUN mkdir /clinic
WORKDIR /clinic
COPY Gemfile /clinic/Gemfile
COPY Gemfile.lock /clinic/Gemfile.lock
RUN bundle install
COPY . /clinic
RUN chown -R $USER:$USER .
RUN mkdir -p /clinic/tmp/db/mysql
RUN chmod -R 755 /clinic/tmp/db/mysql
