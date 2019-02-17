from app import app
from flask import render_template
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from services.characterService import CharacterService
from viewModels.characterModel import CharacterModel

engine = create_engine('mysql://root:root@localhost:3306/character_generator')
engine.connect()


@app.route('/')
@app.route('/index')
def index():
    session_maker = sessionmaker(bind=engine)
    session = session_maker()

    character = CharacterModel(session)
    CharacterService.randomize_character(character)
    return render_template('5e attempt.html', character=character)
