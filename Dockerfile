FROM ctftraining/base_image_nginx_mysql_php_73

ENV FLAG "flag{glzjin_wants_a_girl_friend}"

COPY ./files/html/ /var/www/html/
COPY ./files/flag.sh /flag.sh
RUN rm -rf /var/www/html/index.php \
    && ln -s /var/www/html/index.html /var/www/html/index.php
