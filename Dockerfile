FROM nginx:alpine


RUN rm /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/
COPY ./angular-starter/angular-starter/dist/* /usr/share/nginx/html/

EXPOSE 8080