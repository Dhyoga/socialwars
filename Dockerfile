FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5055

ENV BIND_HOST=0.0.0.0

CMD ["python", "server.py"]
