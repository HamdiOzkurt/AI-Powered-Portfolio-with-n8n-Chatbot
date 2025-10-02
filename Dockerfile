# Use the official n8n image
FROM n8nio/n8n:latest

# Optionally set a working directory (n8n image already has one)
WORKDIR /home/node

# Render expects containers to listen on port 10000
EXPOSE 10000

# Default command
CMD ["n8n"]


