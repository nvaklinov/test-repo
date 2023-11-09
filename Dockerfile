from python:3.13.0a1-alpine3.18

RUN pip install flask && mkdir app

COPY . /app/

WORKDIR /app/

CMD ["python","web.py"]
