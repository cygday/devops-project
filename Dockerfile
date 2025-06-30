
FROM node
WORKDIR ./devops-project
COPY . .
EXPOSE 3000
CMD ['entrypoint']


