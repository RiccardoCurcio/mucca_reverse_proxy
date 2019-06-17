FROM nginx:alpine

RUN apk update && apk add bash

RUN rm -rf /etc/nginx/conf.d

COPY conf /etc/nginx

RUN mkdir /etc/cert

# COPY ./cert/{{CTR}} /etc/cert/{{CTR}}
# COPY ./cert/{{KEY}} /etc/cert/{{KEY}}

{{CERTCOPYCMD}}

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
