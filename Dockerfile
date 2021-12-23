FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
CMD npm run build

# copy output of above container i.e /app/build folder to nginx container to RUN App
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
