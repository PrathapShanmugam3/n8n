# Use official n8n image
FROM docker.n8n.io/n8nio/n8n:latest

# Set environment variables (optional here; recommended to set via Docker Compose or Render environment)
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=development-datacode.j.aivencloud.com
ENV DB_POSTGRESDB_PORT=15555
ENV DB_POSTGRESDB_DATABASE=defaultdb
ENV DB_POSTGRESDB_USER=avnadmin
ENV DB_POSTGRESDB_PASSWORD=AVNS_KDMqDAKw2I13Rr776
ENV DB_POSTGRESDB_SSLMODE=require
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Expose port n8n runs on
EXPOSE 5678

# Start n8n
ENTRYPOINT ["n8n"]
