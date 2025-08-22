FROM alpine:latest

# Install basic utilities
RUN apk add --no-cache curl wget

# Create a simple script
RUN echo '#!/bin/sh' > /hello.sh && \
    echo 'echo "Hello from Docker!"' >> /hello.sh && \
    echo 'echo "Current time: $(date)"' >> /hello.sh && \
    chmod +x /hello.sh

# Set the working directory
WORKDIR /app

# Run the script by default
CMD ["/hello.sh"]
