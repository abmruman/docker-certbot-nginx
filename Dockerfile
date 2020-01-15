FROM nginx:1.17

ENV email="owner@company.com"

RUN apt-get update && \
    apt-get install certbot python-certbot-nginx -yqq

RUN certbot --nginx --non-interactive --agree-tos -m ${email}

EXPOSE 80

CMD [ "bash" ]