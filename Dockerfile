FROM python:3.5
RUN pip install Flask==0.11.1
RUN pip install virtualenv
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
CMD ["python3", "app.py"]
