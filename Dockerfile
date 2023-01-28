FROM ruby:3.1.1

RUN apt-get update -yqq && \
	apt-get install -yqq --no-install-recommends apt-transport-https ca-certificates \
	sqlite3 \
	libsqlite3-dev && \
	apt-get -q clean && \
	rm -rf /var/lib/apt/lists

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 3000
RUN rails db:migrate

CMD ["rails", "server", "-b", "0.0.0.0"]
