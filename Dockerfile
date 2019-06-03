FROM amazonlinux
ENV NODEJS_VERSION="v8.16.0"
RUN export NODEJS_VERSION="v8.16.0"
RUN echo "curl -O https://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.xz && tar xf node-$NODEJS_VERSION-linux-x64.tar.xz && cd node-$NODEJS_VERSION-linux-x64 && cp -R * /usr/local"
RUN yum install -y git tar xz
RUN curl -O https://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.xz && tar xf node-$NODEJS_VERSION-linux-x64.tar.xz && cd node-$NODEJS_VERSION-linux-x64 && cp -R * /usr/local

# get yarn
RUN npm install -g yarn

# clean
RUN rm -rf node-$NODEJS_VERSION-linux-x64*
CMD ["node", "--version"]
