FROM python:3.5
RUN pip install Flask==0.11.1
RUN pip install virtualenv
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
COPY app /app
CMD ["virtualenv", "venv"]
CMD ["python", "app.py"]
