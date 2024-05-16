# Use the latest Nginx base image
FROM nginx:latest

# Copy your custom Nginx configuration file and SSL certificates
COPY nginx.conf /etc/nginx/nginx.conf
COPY certificates /etc/nginx/certificates

# Expose ports 80 and 443
EXPOSE 80
EXPOSE 443

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]


