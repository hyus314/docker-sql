# Use official PostgreSQL image
FROM postgres:16

# Set default environment variables
ENV POSTGRES_USER=student
ENV POSTGRES_PASSWORD=student
ENV POSTGRES_DB=practice_db

# Optional: copy initial SQL scripts
# Any .sql file here will be executed on first container start
# COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432
