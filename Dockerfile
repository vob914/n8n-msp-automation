FROM n8nio/n8n

# Copy the wait script
COPY wait-for-db.sh /wait-for-db.sh

# Make it executable
RUN chmod +x /wait-for-db.sh

# Start n8n only after DB is reachable
CMD ["sh", "/wait-for-db.sh"]
