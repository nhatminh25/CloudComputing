FROM node:18.18.0-alpine AS build

WORKDIR /app

COPY . /app/

RUN npm install --silent

RUN npm run build


FROM nginx:1.17-alpine

COPY --from=build /app/dist /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]