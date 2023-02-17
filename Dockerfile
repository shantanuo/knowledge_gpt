FROM python:3.10
RUN mkdir /app
COPY * /app/
WORKDIR /app/
ENV PYTHONPATH=${PYTHONPATH}:${PWD}
RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --only main --no-root
CMD ["streamlit", "run", "main.py"]
