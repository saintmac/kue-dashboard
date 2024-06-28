FROM alpine:3.12
MAINTAINER saintmac

# deps
RUN apk add --no-cache gcc g++ python3 nodejs npm

# install
RUN npm install kue

# cleanup
RUN apk del gcc g++ python3 && \
    rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.npmrc /root/.node-gyp

# run
EXPOSE 80
CMD /node_modules/kue/bin/kue-dashboard -r $REDIS_URL -p 80