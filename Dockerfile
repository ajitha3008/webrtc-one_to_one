FROM node:10

WORKDIR /usr/src/app

ENV PORT 5000
ENV HOST 0.0.0.0

COPY package*.json ./

RUN npm install --only=production

# Copy the local code to the container
COPY . .


# Start the service
CMD npm start