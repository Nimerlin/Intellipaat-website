FROM  hshar/webapp
COPY index.html /var/www/html/
CMD  'cp images/github3.jpg /var/www/html/images/'
