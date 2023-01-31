FROM python:3.11.1-slim-bullseye

RUN python3 -m venv /opt/venv

# Install dependencies:
COPY requirements.txt .
RUN . /opt/venv/bin/activate && pip install -r requirements.txt

# Run the application:
COPY main.py .
COPY auth_data.py .
COPY auxiliary_classes.py .
COPY logger.py .
CMD . /opt/venv/bin/activate && exec python main.py
