FROM ruby:2.4-alpine

RUN apk --update add --virtual\
  build-dependencies build-base libev libev-dev postgresql-dev nodejs bash\
  tzdata sqlite-dev git curl 

#RUN apt-get update -qq && apt-get install -y build-essential apt-transport-https apt-utils

# for yarn

RUN npm install -g yarn 
WORKDIR /app
ADD .gemrc /app
ADD Gemfile /app/
ADD Gemfile.lock /app/

ENV RAILS_ENV=development
ENV NODE_ENV=development

RUN bundle install --jobs 8

ADD . /app

RUN rake db:create && rake db:migrate

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s"]
