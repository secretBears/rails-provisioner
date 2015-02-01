FROM ruby:2.1
MAINTAINER alex@alexanderjunger.at

RUN apt-get update \
  && apt-get install -y \
    node \
    python-pygments \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/

RUN gem install \
  middleman \
  --no-rdoc --no-ri 

ADD middleman_build.sh /middleman_build.sh
RUN chmod u+rwx /middleman_build.sh

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT "/middleman_build.sh"
