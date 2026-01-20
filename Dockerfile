FROM alpine:latest as sqlite-image

# Install sqlite
RUN apk add --no-cache sqlite

# Working directory inside container
WORKDIR /data

# Default database file
CMD ["sqlite3", "practice.db"]
