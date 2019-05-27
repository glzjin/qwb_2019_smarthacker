FROM ctftraining/base_image_nginx_mysql_php_73

LABEL Author="glzjin <i@zhaoj.in>"
LABEL Blog="https://www.zhaoj.in"

COPY ./files /tmp/
RUN cp -rf /tmp/html /var/www/ \
    && cp -f /tmp/flag.sh /flag.sh \
    && rm -rf /var/www/html/index.php \
    && ln -s /var/www/html/index.html /var/www/html/index.php
