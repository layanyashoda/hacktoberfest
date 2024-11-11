# My Dockerized Nginx Application

This project demonstrates how to deploy a simple HTML application with Nginx in Docker. The application includes HTML, CSS, and JavaScript files served by an Nginx server.

## Project Structure

The project directory structure should look like this:


## Requirements

- [Docker](https://www.docker.com/get-started) installed on your machine.

## Instructions

Follow these steps to build and run the application:

### 1. Build the Docker Image

Navigate to the `my-project` directory in your terminal and run the following command to build the Docker image:

```bash
docker build -t my-nginx-app .
```

This command creates a Docker image named `my-nginx-app` based on the configuration in the `Dockerfile`.

### 2. Run the Docker Container

After building the image, you can start a container and expose it on port 8080 by running:

```bash
docker run -d -p 8080:8080 my-nginx-app
```

This command will start the Nginx server inside a Docker container and serve your application on `http://localhost:8080`.

## Access the Application

Once the container is running, open your web browser and go to:

```
http://localhost:8080
```

You should see the main HTML page of your application served by Nginx.

## Notes

- The `Dockerfile` is set up to copy all files from the current directory (including `index.html`, `script.js`, `styles.css`, etc.) to the Nginx server directory inside the container.
- The Nginx server is configured to listen on port 8080 inside the container, which is mapped to port 8080 on your local machine.

## Stopping the Container

To stop the container, find its ID using `docker ps` and then stop it:

```bash
docker stop <container_id>
```

Or, if you want to remove the container directly, use:

```bash
docker rm -f <container_id>
```

## Cleaning Up

To remove the Docker image when you're done, run:

```bash
docker rmi my-nginx-app
```

---

This README covers all the necessary steps to build, run, and manage the Docker container for this Nginx HTML application.
``` 
