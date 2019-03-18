FROM ruby:2.5-slim

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev default-libmysqlclient-dev nodejs && \
mkdir /charity-commission-api
WORKDIR /charity-commission-api
COPY Gemfile Gemfile.lock /charity-commission-api/
RUN bundle install
COPY . /charity-commission-api

EXPOSE 80