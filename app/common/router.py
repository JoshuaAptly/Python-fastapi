from fastapi import APIRouter

from app.common.schemas import HealthResponse

router = APIRouter(tags=["health"])

SERVICE_NAME = "fast-api"


@router.get("/health", response_model=HealthResponse)
def health_check() -> HealthResponse:
    """Liveness check for load balancers. Returns 200 when the service is running."""
    return HealthResponse(status="ok", service=SERVICE_NAME)
