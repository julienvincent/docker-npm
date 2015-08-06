# julienvincent/npm

FROM debian:jessie
MAINTAINER "Julien Vincent" <julienlucvincent@gmail.com>

RUN mkdir -p /data/www

# Install NPM
RUN apt-get update -y && \
	apt-get install curl -y && \
	curl -sL https://deb.nodesource.com/setup | bash - && \
	apt-get install nodejs -y

VOLUME ["/data/www"]

ENTRYPOINT ["npm"]
CMD ["--help"]