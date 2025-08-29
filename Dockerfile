FROM nginx:latest
RUN cd /usr/share/nginx/html && \
    rm index.html
COPY ./content /usr/share/nginx/html
CMD ["nginx","-g","daemon off;"]
EXPOSE 80