FROM nginx:1.19.0-alpine


COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./staticfiles/ /etc/nginx/html/
EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
