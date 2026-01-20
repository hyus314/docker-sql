function postgres-docker-build-image() {
    docker build -t sql-practice .
}

function postgres-docker-run-container() {
    docker run                                                                 \
        -it --name sql-practice-container                                      \
        -p 5432:5432                                                           \
        sql-practice
}

echo "Docker environment for sql"
echo "Build image: "
echo "      postgres-docker-build-image"
echo "Run container: "
echo "      postgres-docker-run-container"
