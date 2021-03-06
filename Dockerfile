FROM ruby:2.3
RUN apt-get update -qq
RUN apt-get install -y build-essential libpq-dev
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
add . /app


# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app
#
#EXPOSE 3000
#CMD ["rails", "server", "-b", "0.0.0.0"]
#
#RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
#RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
#
#COPY Gemfile /usr/src/app/
#
# Uncomment the line below if Gemfile.lock is maintained outside of build process
# COPY Gemfile.lock /usr/src/app/
#
#
#RUN bundle install

