# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
# Use the official Python image with the appropriate version
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the pyproject.toml and the src directory to the container
COPY pyproject.toml /app/
COPY src/sefaria_jewish_library /app/src/sefaria_jewish_library

# Install dependencies
RUN pip install --upgrade pip
RUN pip install hatchling
RUN pip install .

# Set environment variables
ENV PYTHONIOENCODING utf-8

# Run the server when the container launches
CMD ["uv", "--directory", "/app", "run", "sefaria_jewish_library"]
