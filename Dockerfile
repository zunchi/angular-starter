FROM nginx:alpine


RUN rm /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html
# RUN echo $(ls -la ./)
COPY ./nginx.conf /etc/nginx/conf.d/
COPY dist /usr/share/nginx/html

EXPOSE 8080