FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY s3-app.py /app/s3-app.py

CMD ["python", "s3-app.py"]
