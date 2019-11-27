import os

import requests

from flask import Flask, render_template
from flask_bootstrap import Bootstrap

app = Flask(__name__)
Bootstrap(app)

uri = os.environ.get('DATABASE_URI')


@app.route('/')
def index():
    resp = requests.get(uri)
    return render_template("index.html", pokemons=resp.json())


@app.route('/pokemon/<id>')
def get_pokemon(id):
    resp = requests.get("{0}/{1}".format(uri, id))
    return render_template("pokemon.html", pokemon=resp.json())
