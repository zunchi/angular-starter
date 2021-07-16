FROM nginx:alpine


RUN rm /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/site.conf
COPY dist/angular-starter /usr/share/nginx/html

EXPOSE 8080