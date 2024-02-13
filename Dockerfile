FROM python:3.10-alpine as builder

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["server.py"]