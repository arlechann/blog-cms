From nginx:1.19.0

COPY ["nginx.conf", "/etc/nginx/"]
COPY ["default.conf", "/etc/nginx/conf.d"]

CMD ["nginx", "-g", "daemon off;"]
