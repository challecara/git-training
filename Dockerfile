FROM ruby:3.0.2

ENV APP_ROOT=/src

RUN set -ex

RUN apt-get update -qq
RUN mkdir $APP_ROOT

WORKDIR $APP_ROOT
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install -j4
