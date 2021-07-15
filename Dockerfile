FROM nginx:alpine


RUN rm /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html
RUN ls -la ./
COPY ./nginx.conf /etc/nginx/conf.d/
COPY /home/runner/work/angular-starter/dist /usr/share/nginx/html

EXPOSE 8080