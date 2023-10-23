FROM node:14

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . /app

# Add environment variables for MongoDB connection
ENV MONGO_HOST=mongo-db
ENV MONGO_PORT=27017
ENV MONGO_USERNAME=shery
ENV MONGO_PASSWORD=1521
ENV MONGO_DATABASE=mydatabase

EXPOSE 3000

CMD ["node", "index.js"]

# ----- use these commands to build and push in repo --------

#docker build -t shereen:latest .
#docker tag shereen:latest us-central1-docker.pkg.dev/sherein/my-repo/shereen:latest
#gcloud auth configure-docker us-central1-docker.pkg.dev
#docker push us-central1-docker.pkg.dev/sherein/my-repo/shereen:latest