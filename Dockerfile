# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.11-slim

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

CMD ["python", "run.py" ]
