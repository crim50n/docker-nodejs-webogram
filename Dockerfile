FROM node

WORKDIR /usr/src/app

ADD https://github.com/zhukov/webogram/archive/master.zip /usr/src/master.zip
RUN apt-get install unzip
RUN unzip /usr/src/master.zip -d /usr/src
RUN rm -fr /usr/src/app && mv /usr/src/webogram-master /usr/src/app

# install your application's dependencies
RUN npm install

# replace this with your application's default port
EXPOSE 8000

WORKDIR /usr/src/app/app
# replace this with your main "server" script file

CMD [ "node", "../server.js", "8000", "0.0.0.0" ]
