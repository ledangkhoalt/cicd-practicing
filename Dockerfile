FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE $PORT
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", $PORT]
