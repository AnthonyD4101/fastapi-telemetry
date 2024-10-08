FROM python:3.12

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["uvicorn", "fastapi_project.main:app", "--host", "0.0.0.0", "--port", "8080"]