FROM ruby:2.7
RUN apt-get update && apt-get install -qq -y --no-install-recommends build-essential libpq-dev
ENV INSTALL_PATH /notebook-api
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY Gemfile ./
ENV BUNDLE_PATH /box
COPY . .
