FROM nginx
LABEL name='vue-front'
LABEL version='1.0'
COPY ./dist /home/nginx/html
COPY ./vue-front.conf /home/nginx/conf.d
EXPOSE 80
