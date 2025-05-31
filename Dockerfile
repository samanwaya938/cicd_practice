# Use slim image for smaller size
FROM python:3.10-slim

WORKDIR /app

# Copy only necessary files (consider adding .dockerignore)
COPY . .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Document the container port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]