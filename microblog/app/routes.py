from app import app
from flask import render_template, url_for
from models.character5e import Character5e


@app.route('/')
@app.route('/index')
def index():
    character = Character5e().get_character()
    print(character.strength)
    return render_template('5e attempt.html', character=character)
