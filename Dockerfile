FROM ctftraining/base_image_nginx_php_73

LABEL Author="glzjin <i@zhaoj.in>" Blog="https://www.zhaoj.in"

COPY ./files/www.tar.gz /var/www/html

RUN rm index.php \
    && tar zxf www.tar.gz \
    && mv src/* ./ \
    && rm -rf src index.php \
    # compatible
    && ln -s /var/www/html/index.html /var/www/html/index.php