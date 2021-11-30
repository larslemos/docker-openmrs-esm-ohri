
FROM node:16-alpine

WORKDIR /usr/src/app

# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"] . ` 
# COPY ["package.json", "package-lock.json"] .

COPY package.json .

# RUN npm install && mv node_modules ../
# RUN apk add --no-cache --update npm
RUN npm install

COPY . .

EXPOSE 8080
EXPOSE 8081

CMD ["npx","openmrs","develop","--backend","https://ohri-dev.globalhealthapp.net"]

