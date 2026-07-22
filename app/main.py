from fastapi import FastAPI

from app.common.router import router as health_router

app = FastAPI(title="Fast API Learn")

app.include_router(health_router, prefix="/api/v1")
