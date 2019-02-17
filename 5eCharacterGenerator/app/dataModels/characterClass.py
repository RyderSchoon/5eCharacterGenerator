from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

base = declarative_base()


class CharacterClass(base):
    __tablename__ = 'classes'

    class_id = Column(Integer, primary_key=True)
    name = Column(String)
    hit_die = Column(String)
