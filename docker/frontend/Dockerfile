FROM node:10.16.3 as builder
RUN git clone -b master git clone -b master https://github.com/alexanderJPV/frontend_food.git
WORKDIR /frontend_food
RUN npm install
RUN npm run build -- --prod

FROM nginx:alpine
COPY --from=builder /frontend_food/dist/frontend-restaurante/ /usr/share/nginx/html
COPY --from=builder /frontend_food/nginx.conf /nginx/conf.d/default.conf

EXPOSE 4200
CMD ["nginx", "-g", "daemon off;"]
