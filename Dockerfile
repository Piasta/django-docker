FROM python:3.9

WORKDIR /django_app
COPY . /django_app

RUN pip install -r requirements.txt

ENV DEBUG=True
ENV SECRET_KEY=mysecretkey

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]