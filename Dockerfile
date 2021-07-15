FROM nginx:alpine


RUN rm /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html
RUN ls -la ./
RUN ls -la ../
RUN ls -la mnt
RUN ls -la home
RUN ls -la tmp
COPY ./nginx.conf /etc/nginx/conf.d/
COPY dist /usr/share/nginx/html

EXPOSE 8080