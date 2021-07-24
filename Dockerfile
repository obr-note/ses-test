FROM ruby:3.0.0
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       nodejs \
                       vim
RUN mkdir /webapp
WORKDIR /webapp
ADD Gemfile /webapp/Gemfile
ADD Gemfile.lock /webapp/Gemfile.lock
RUN bundle install
ADD . /webapp
