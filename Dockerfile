# Create a docker file for python 3.10 from an alpine image
# Use pip to install flask
# Use pip to install tiktoken
# Copy the /usr/tiktoken/tiktoken_server.py file to the container
# The entry point for the container is python -m flask --app /usr/tiktoken/tiktoken_server.py run

FROM python:3.10-alpine
RUN pip install flask
RUN pip install tiktoken
COPY src/tiktoken_server.py /usr/tiktoken/tiktoken_server.py

CMD ["python", "-m", "flask", "--app", "/usr/tiktoken/tiktoken_server.py", "run", "--host", "0.0.0.0"]

EXPOSE 5000

