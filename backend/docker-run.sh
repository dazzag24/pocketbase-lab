docker run -it --publish 8090:8090 \
-e S3_BUCKET="${S3_BUCKET}" \
-e S3_ACCESS_KEY="${S3_ACCESS_KEY}" \
-e S3_SECRET_KEY="${S3_SECRET_KEY}" \
-e S3_DATA_PATH="${S3_DATA_PATH}" \
-e S3_LOGS_PATH="${S3_LOGS_PATH}" \
-e S3_URL="${S3_URL}" \
pocketbase:latest --rm 
