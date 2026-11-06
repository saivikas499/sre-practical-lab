
# 1. Select the base image
FROM python:3.12-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy dependencies file
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy application source code
COPY ./app ./app

# 6. Expose application port
EXPOSE 8000

# 7. Start FastAPI application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
