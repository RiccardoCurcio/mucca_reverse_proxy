FROM nginx:alpine

RUN apk update && apk add bash

RUN rm -rf /etc/nginx/conf.d

COPY conf /etc/nginx

RUN mkdir /etc/certificato

COPY ./certificato/localhost.crt /etc/certificato/localhost.crt
COPY ./certificato/localhost.key /etc/certificato/localhost.key

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
