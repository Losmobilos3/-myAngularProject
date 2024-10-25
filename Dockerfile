# Chooses an image with nodeJS installed
FROM node:20.5.0-alpine
# Set the working directory of the container (Where commands will be called from)
WORKDIR app/
# Copy package.json and such into the directory
COPY package*.json /app
# Install every package listed in the package.json
RUN npm i
# Copy the rest of the files into the container
COPY . .
# Sets an environment variable for the container
ENV PORT=8080
# Exposes the 8080 port to the outside of the container
EXPOSE 8080
# Runs the application (Each word in the string, is seperated by a whitespace and run)
CMD ["npm", "start", "--", "--host", "0.0.0.0"]
