FROM node:20-slim

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . /app

# Add environment variables for MongoDB connection
ENV DBuser=shery 
ENV DBpass=1521  
ENV DBhosts=mongo-0.mongo.default.svc.cluster.local:27017

EXPOSE 3000

CMD ["node", "index.js"]

# ----- use these commands to build and push in repo --------

#docker build -t shereen:latest .
#docker tag shereen:latest us-central1-docker.pkg.dev/sherein/my-repo/shereen:latest
#gcloud auth configure-docker us-central1-docker.pkg.dev
#docker push us-central1-docker.pkg.dev/sherein/my-repo/shereen:latest
