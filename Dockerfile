FROM python:3.8
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
WORKDIR /fastapi-monitoring
COPY . /fastapi-monitoring
EXPOSE 80
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "80"]