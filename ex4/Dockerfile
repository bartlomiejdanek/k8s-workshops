FROM ruby:2.6.2-alpine

RUN apk add --update build-base postgresql-dev postgresql-client

ENV APP_HOME /app/
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME
RUN gem install bundler && bundle install

COPY . $APP_HOME

ENV PORT 3000
EXPOSE 3000
CMD ["bundle", "exec", "ruby", "app.rb"]
