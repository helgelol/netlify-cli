FROM node:18

USER node

ENV NETLIFY_AUTH_TOKEN="" \
    PATH="/home/node/docker-netlify-cli/node_modules/.bin:${PATH}"

COPY --chown=node:node package.json /home/node/docker-netlify-cli/package.json

WORKDIR /home/node/docker-netlify-cli
RUN /usr/local/bin/yarn \
    && /usr/local/bin/yarn cache clean

WORKDIR /project

ENTRYPOINT ["/home/node/docker-netlify-cli/node_modules/.bin/netlify"]

LABEL org.opencontainers.image.authors="Helge Falch <helge@kubes.no>"
