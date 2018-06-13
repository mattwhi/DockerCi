FROM ubuntu
MAINTAINER Matthew.White@telefonica.com

RUN apt update && apt install -y \
	apache2 \
	nano \
	npm \
	git \
	&& apt clean
COPY . /var/www/html

RUN cd /var/www/html; npm install

EXPOSE 80	

CMD ["apache2ctl","-D","FOREGROUND"]