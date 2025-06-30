
FROM nginx:alpine
WORKDIR ./devops-project
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 3000
CMD ["index.html"]


