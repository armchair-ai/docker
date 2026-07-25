FROM python:3.14-slim

ENV PATH="/opt/venv/bin:$PATH"

RUN python -m venv /opt/venv && \
    pip install --no-cache-dir \
    google-antigravity \
    "fastapi[standard]==0.138.1" \
    uvicorn \
    sqlalchemy \
    asyncpg \
    alembic \
    pydantic-settings