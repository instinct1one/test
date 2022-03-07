FROM python:3.9.10-bullseye

RUN mkdir /app
WORKDIR /app

COPY eds.py .
#Command to copy test file to current working directory so that unit tests can be run and exported
COPY test_eds.py .
COPY requirements.txt .

RUN pip3 install -r requirements.txt

CMD ["python", "-u", "/app/eds.py"]