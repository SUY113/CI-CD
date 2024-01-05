FROM node:20.10.0
WORKDIR /app
COPY . /app
EXPOSE 3000
RUN npm install
CMD ["npm","run","start"]