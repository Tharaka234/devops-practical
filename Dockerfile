
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

# Increase pip timeout and retry failed downloads
RUN pip install \
    --no-cache-dir \
    --timeout 120 \
    --retries 10 \
    -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
