FROM node:alpine as BUILDER
WORKDIR /app
COPY . .
RUN npm install
RUN npm install -g @angular/cli@16.0.2
EXPOSE 4200
CMD [ "ng", "serve", "--host", "0.0.0.0", "--disable-host-check" ]


# FROM nginx:$VERSION_ALPINE
# WORKDIR /nginx
# COPY --from=BUILDER $WORKDIR_APP/build /usr/share/nginx/html
# EXPOSE 80
