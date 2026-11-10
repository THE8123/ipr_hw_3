FROM python:3.13-slim

WORKDIR /app
COPY app/app.py .

RUN mkdir /data && chown 10001:10001 /data
USER 10001:10001

EXPOSE 8000

CMD ["python", "-u", "app.py"]