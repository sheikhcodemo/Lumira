# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application's source code from the current directory to the working directory in the container
COPY . .

# Run a placeholder command when the container launches
CMD ["python", "-c", "from src.model.architecture import LumiraModel; print('LumiraModel loaded.')"]
