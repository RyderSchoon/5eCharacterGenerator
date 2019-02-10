from app import app
from flask import render_template
from models.character5e import Character5e
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base


@app.route('/')
@app.route('/index')
def index():

    engine = create_engine('mysql://root:root@localhost:3306/character_generator')
    conn = engine.connect()

    Session = sessionmaker(bind=engine)
    session = Session()

    character = Character5e(session).get_character()
    return render_template('5e attempt.html', character=character)
