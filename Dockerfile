# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install required packages
RUN apt-get update && apt-get install -y fortune-mod cowsay

# Copy the application script into the container
COPY wisecow.sh .

# Grant execute permissions to the script
RUN chmod +x wisecow.sh

# Expose the application port
EXPOSE 4499

# Define the command to run the application
CMD ["./wisecow.sh"]
