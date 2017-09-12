FROM ruby:2.3.1

RUN apt-get update && apt-get install -y node
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

WORKDIR /app/
RUN bundle install --deployment

ADD . /app/
RUN bundle exec rails assets:precompile
EXPOSE 8080
CMD /app/start.sh
