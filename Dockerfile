FROM python:3.10

WORKDIR /app

COPY app.py .

RUN pip install flask

CMD ["python","app.py"]


name: Docker CI

on:
  push:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Build Docker Image
        run: docker build -t demo .

      - name: Run Container
        run: docker run -d -p 5000:5000 demo
