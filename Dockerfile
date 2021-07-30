FROM python:3.7

RUN pip install fastapi uvicorn

EXPOSE 8888

COPY ./ /app

WORKDIR app

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8888"]