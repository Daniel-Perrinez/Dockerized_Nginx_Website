# Use the nginx:latest as the base image and specify for the linux/amd64 architecture
FROM nginx:latest

# Update and upgrade the installed packages, and install required utilities
RUN apt-get update && \
    apt-get upgrade -y

COPY html/ /usr/share/nginx/html/

# CMD instruction to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]