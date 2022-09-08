FROM alpine:3.16.2

RUN apk add --update --no-cache nodejs npm curl bash jq

ENV mongoURL=mongodb://localhost:27017
ENV dbName=filecoindb
ENV fcnode=https://endpoint_url_to_rpc.io

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY source/ .
RUN npm i
RUN chmod +x script.sh

CMD ["./script.sh"]
