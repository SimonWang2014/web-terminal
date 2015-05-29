FROM wangh/dockerfile-nodejs
MAINTAINER Vangie Du from Coding IDE Team <duwan@coding.net>

EXPOSE 5000
#EXPOSE 80

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

CMD ["npm", "start"]
