FROM python:3.10

WORKDIR /app
COPY backend/requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY backend /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
