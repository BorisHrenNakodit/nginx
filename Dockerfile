FROM nginx:latest
RUN cd /usr/share/nginx/html && \
    rm index.html
COPY ./content/index.html /usr/share/nginx/html
COPY ./content/admin.jpg /usr/share/nginx/html
CMD ["nginx","-g","daemon off;"]
EXPOSE 80