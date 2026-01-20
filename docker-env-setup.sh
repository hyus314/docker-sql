#!/bin/bash

function sqlite-docker-build-image() {
    docker build -t sqlite-image .
}

function sqlite-docker-run-container() {
    docker run -d                                                              \
        --name sqlite-practice-container                                       \
        -v sqlite-data:/data                                                   \
        sqlite-image                                                           \
        tail -f /dev/null                                                   && \
    docker exec -it sqlite-practice-container sqlite3 practice.db
}

echo "Docker environment for sql"
echo "Build image: "
echo "      sqlite-docker-build-image"
echo "Run container: "
echo "      sqlite-docker-run-container"
