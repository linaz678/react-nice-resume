FROM  node:12.18.1
ENV NODE_ENV=production
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN npm  i --legacy-peer-deps
EXPOSE 3000
CMD ["node", "src/index.js"]