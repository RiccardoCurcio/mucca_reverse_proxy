FROM nginx:alpine

RUN apk update && apk add bash

RUN rm -rf /etc/nginx/conf.d

COPY conf /etc/nginx

RUN mkdir /etc/cert

COPY ./cert/localhost.crt /etc/cert/localhost.crt
COPY ./cert/localhost.key /etc/cert/localhost.key

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
