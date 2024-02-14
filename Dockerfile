# # Use the latest Nginx base image
# FROM nginx:latest

# # Remove the default Nginx configuration file
# # RUN rm /etc/nginx/conf.d/default.conf

# # Copy your custom Nginx configuration file
# COPY nginx.conf /etc/nginx/nginx.conf


# # Copy SSL certificates to container
# # COPY cert.pem /etc/nginx/cert.pem
# # COPY unencrypted_key.pem /etc/nginx/unencrypted_key.pem

# # Copy SSL certificates to container
# COPY certificates/fullcert.pem /etc/nginx/certificates/fullcert.pem
# COPY certificates/mnwpvkey.pem /etc/nginx/certificates/mnwpvkey.pem

# # Expose port 80 (if not already exposed in the base image)
# EXPOSE 80
# EXPOSE 443

# # Start Nginx when the container starts
# CMD ["nginx", "-g", "daemon off;"]

# Use the latest Nginx base image
FROM nginx:latest

# Remove the default Nginx configuration file
# RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file and SSL certificates
COPY nginx.conf /etc/nginx/nginx.conf
COPY certificates /etc/nginx/certificates

# Expose ports 80 and 443
EXPOSE 80
EXPOSE 443

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]


