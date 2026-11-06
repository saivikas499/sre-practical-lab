
from fastapi import FastAPI

app = FastAPI(
    title="SRE Practical Lab",
    description="Application for learning SRE workflows",
    version="1.0.0"
)


@app.get("/")
def home():
    return {
        "application": "SRE Lab",
        "message": "Application is running"
    }


@app.get("/health")
def health_check():
    return {
        "status": "healthy"
    }
