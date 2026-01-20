#!/bin/bash

function postgres-docker-build-image() {
    docker build -t sql-practice .
}

function postgres-docker-run-container() {
    docker run                                                                 \
        --name sql-practice-container                                          \
        -p 5432:5432                                                           \
        sql-practice
}

echo "Docker environment for sql"
echo "Build image: "
echo "      sqlite-docker-build-image"
echo "Run container: "
echo "      sqlite-docker-run-container"
