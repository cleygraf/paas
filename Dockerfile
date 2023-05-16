FROM nginx
COPY build /usr/share/nginx/html
COPY assets /usr/share/nginx/html/assets
COPY nginx/default.conf /etc/nginx/conf.d/default.conf