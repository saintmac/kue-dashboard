FROM pavlov/alpine-node:latest
MAINTAINER Alex Kern <alex@pavlovml.com>

# deps
RUN apk --update add gcc g++ python
 
# install
RUN npm install kue

# cleanup
RUN apk del gcc g++ python && \
    rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.npmrc /root/.node-gyp

# run
EXPOSE 80
CMD /node_modules/kue/bin/kue-dashboard -r $REDIS_URL -p 80
