FROM ruby:alpine

# https://bundler.io/v2.0/guides/bundler_docker_guide.html allow container 

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

RUN apk add --update build-base postgresql-dev tzdata nodejs
RUN gem install rails -v '6.0.0'

WORKDIR /app
ADD Gemfile ./
RUN bundle install

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"] 
# , "-p", "3000"
EXPOSE 3000
