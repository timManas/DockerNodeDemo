FROM node:12            

# Working Directory
WORKDIR /app

# We want to copy all dependencies so we can install them next
COPY package*.json ./

RUN npm install

# Copy over all local files to current directory
COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]
