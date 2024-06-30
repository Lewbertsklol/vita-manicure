FROM python:3.12

COPY . /app
WORKDIR /app

RUN apt update -y
RUN pip install poetry
RUN poetry install --no-root

EXPOSE 8000

CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]