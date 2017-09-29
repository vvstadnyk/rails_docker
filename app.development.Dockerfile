FROM ruby:2.2.2
RUN apt-get update && apt-get install -qq -y build-essential git nodejs libpq-dev cmake libgit2-dev  pkg-config  --fix-missing --no-install-recommends
RUN apt-get install -y --no-install-recommends apt-utils

ENV BUNDLE_PATH /bundle
RUN gem install bundler --no-document
RUN bundle config git.allow_insecure true

#needs for SIDEKIQPRO
#COPY .bundle_config ./
#RUN cat .bundle_config >> /usr/local/bundle/config

WORKDIR /app
