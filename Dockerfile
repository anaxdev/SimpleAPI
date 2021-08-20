FROM node:lts-alpine

ENV NODE_ENV production

# Create app directory
RUN mkdir -p /usr/src/app && chown -R node:node /usr/src/app
WORKDIR /usr/src/app

COPY package.json yarn.lock ./

USER node

# Install app dependencies for productoin
RUN yarn install --production --pure-lockfile

# Bundle app source
COPY --chown=node:node . .

EXPOSE 3000

HEALTHCHECK --interval=20s --timeout=3s --retries=1 CMD wget -q http://localhost:3000/v1/users -O /dev/null || exit 1

CMD [ "yarn", "start" ]