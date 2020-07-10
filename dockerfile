FROM node:14
WORKDIR /home/nodejs/app/
COPY *.js package.json ./
RUN yarn install
# Create a find program that is not POSIX find
RUN echo "exit 1" > find && chmod u+x find
RUN echo `pwd` && ls -al 
RUN export PATH=`pwd`:$PATH && yarn test
