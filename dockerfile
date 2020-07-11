FROM node:14
WORKDIR /home/nodejs/app/
COPY find *.js package.json ./
RUN yarn install
RUN chmod u+x find
RUN export PATH=`pwd`:$PATH && yarn test
