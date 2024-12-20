# Use Python 3.9 slim image as base
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the port Streamlit runs on
EXPOSE 8501

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Create a healthcheck
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health || exit 1

# Run the application
ENTRYPOINT ["streamlit", "run", "app.py", "--server.address=0.0.0.0", "--server.port=8501"]
