FROM debian:buster-slim

# Install python2
RUN apt-get update && apt-get -y install python2

# Prepare app folder
RUN mkdir /app
# Copy app files
WORKDIR /app
COPY . /app

# Run proxy server
CMD ["python2", "./main.py", "&"]