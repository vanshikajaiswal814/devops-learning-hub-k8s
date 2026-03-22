# Use Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8000

# Run Django app
ENTRYPOINT [ "python" ]
CMD ["manage.py", "runserver", "0.0.0.0:8000", "--noreload"]