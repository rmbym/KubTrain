FROM nginx:latest
RUN rm /usr/share/nginx/html/index.html
COPY ./monsite/ /usr/share/nginx/html/
