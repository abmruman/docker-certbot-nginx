FROM nginx:1.17

RUN apt-get update && \
    apt-get install certbot python-certbot-nginx -yqq

EXPOSE 80

CMD [ "bash" ]