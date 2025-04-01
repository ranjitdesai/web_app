# Use an official Nginx image as a base
FROM nginx:latest

# Copy website files to Nginx document root
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
