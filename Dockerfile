# Base Image
FROM node:7-onbuild 

# Set maintainer
LABEL maintainer "AMPooch"

# Test connection
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port
EXPOSE 8000
