FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/
COPY / /usr/share/nginx/html
USER nginx
EXPOSE 8080
