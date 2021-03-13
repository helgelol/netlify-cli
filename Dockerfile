FROM node:14.16.0-alpine3.13

USER node

COPY --chown=node:node package.json /home/node/netlify-cli/package.json

WORKDIR /home/node/netlify-cli
RUN /usr/local/bin/yarn \
    && /usr/local/bin/yarn cache clean

WORKDIR /project

ENTRYPOINT ["/home/node/netlify-cli/node_modules/.bin/netlify"]

LABEL org.opencontainers.image.authors="Helge Johansen <helge@kubes.no>"