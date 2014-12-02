FROM nginx
MAINTAINER Mac Oosthuizen <mac@piment.digital>

RUN apt-get install -y git ca-certificates --no-install-recommends 
WORKDIR /opt/site

RUN mv /etc/nginx/nginx.conf /tmp/nginx.conf && echo "daemon off;" > /etc/nginx/nginx.conf && cat /tmp/nginx.conf >> /etc/nginx/nginx.conf && rm /tmp/nginx.conf
ADD site.conf /etc/nginx/sites-available/default

ADD start.sh /start.sh
RUN chmod 755 /start.sh

EXPOSE 80

CMD ["./start.sh"]