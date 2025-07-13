FROM python:3.9-slim
WORKDIR /app
COPY app.py .
RUN pip install --upgrade pip && pip install flask && rm -rf /root/.cache
EXPOSE 5000
CMD ["python", "app.py"]