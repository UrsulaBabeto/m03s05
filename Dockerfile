FROM node:14

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
# ----

EXPOSE 3333

ENV DB_DIALECT=postgres
ENV DB_HOST=localhost
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=SENAI
ENV DATABASE=postgres
ENV DB_PORT=5432
ENV JWT_SECRET=tokenSuperForte

ENTRYPOINT [ "node", "./src/index.js" ]
