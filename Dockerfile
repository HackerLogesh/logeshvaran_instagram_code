# Use lightweight NGINX as the base image
FROM nginx:alpine

# Remove the default NGINX HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files to NGINX’s root directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
