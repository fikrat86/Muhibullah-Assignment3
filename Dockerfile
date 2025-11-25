# Use a lightweight Python image from AWS ECR Public to avoid Docker Hub rate limits
FROM public.ecr.aws/docker/library/python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Expose port 80
EXPOSE 80

# Run the application
CMD ["python", "app.py"]