.PHONY: setup dev test lint format typecheck

setup:
	uv sync --all-groups
	cp -n .env.example .env 2>/dev/null || true

dev:
	uv run uvicorn main:app --reload

test:
	uv run pytest

lint:
	uv run ruff check .

format:
	uv run ruff format .

typecheck:
	uv run mypy main.py tests
