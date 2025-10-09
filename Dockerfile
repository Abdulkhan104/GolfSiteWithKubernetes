FROM nginx:alpine

LABEL maintainer="Abdul <you@example.com>"

RUN rm -rf /usr/share/nginx/html/*

# Copy all files (HTML, CSS, JS, assets)
COPY . /usr/share/nginx/html/

# Permissions
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
