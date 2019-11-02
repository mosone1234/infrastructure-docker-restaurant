FROM node:10.16.3 as builder
RUN git clone https://github.com/alexanderJPV/backend-restfull-food.git
WORKDIR /backend-restfull-food
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]