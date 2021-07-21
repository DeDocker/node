FROM ubuntu:20.04

RUN groupadd --gid 1000 node \
  && useradd --uid 1000 --gid node --shell /bin/sh --create-home node

RUN apt update; \
  apt upgrade -y; \
  apt install curl -y; \
  curl -fsSL https://deb.nodesource.com/setup_16.x | bash -; \
  apt install -y nodejs; \
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null; \
  echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list; \
  apt update; apt install -y yarn; \
  yarn global add nodemon pm2

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "node" ]