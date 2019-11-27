FROM python:3.5

WORKDIR /home/pokedex

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY .flaskenv .flaskenv
COPY templates/ templates/
COPY static/ static/
COPY app.py app.py

EXPOSE 5000
CMD ["flask", "run", "--host", "0.0.0.0"]
