# Use lightweight Node image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy all game files into the container
COPY . .

# Install a simple static server
RUN npm install -g serve

# Expose port 10000 (Render uses $PORT env var)
EXPOSE 10000

# Start the server
CMD ["serve", "-s", ".", "-l", "10000"]
